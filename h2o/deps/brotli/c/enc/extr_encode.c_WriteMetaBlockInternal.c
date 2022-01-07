
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int dist_cache ;
struct TYPE_4__ {scalar_t__ mode; int quality; int size_hint; int disable_literal_context_modeling; } ;
typedef int MetaBlockSplit ;
typedef int MemoryManager ;
typedef int ContextType ;
typedef int Command ;
typedef TYPE_1__ BrotliEncoderParams ;
typedef int BROTLI_BOOL ;


 scalar_t__ BROTLI_IS_OOM (int *) ;
 scalar_t__ BROTLI_MODE_FONT ;
 int BrotliBuildMetaBlock (int *,size_t const*,int const,size_t const,TYPE_1__ const*,size_t const,size_t const,int *,size_t const,int ,int *) ;
 int BrotliBuildMetaBlockGreedy (int *,size_t const*,int const,size_t const,size_t const,size_t const,int ,size_t,int const*,int *,size_t const,int *) ;
 int BrotliIsMostlyUTF8 (size_t const*,int const,size_t const,size_t const,int ) ;
 int BrotliOptimizeHistograms (int,int,int *) ;
 int BrotliStoreMetaBlock (int *,size_t const*,int const,size_t const,size_t const,size_t const,size_t const,int const,int,int,int ,int *,size_t const,int *,size_t*,size_t*) ;
 int BrotliStoreMetaBlockFast (int *,size_t const*,int const,size_t const,size_t const,int const,int *,size_t const,size_t*,size_t*) ;
 int BrotliStoreMetaBlockTrivial (int *,size_t const*,int const,size_t const,size_t const,int const,int *,size_t const,size_t*,size_t*) ;
 int BrotliStoreUncompressedMetaBlock (int const,size_t const*,int const,size_t const,size_t const,size_t*,size_t*) ;
 int BrotliWriteBits (int,int,size_t*,size_t*) ;
 int CONTEXT_SIGNED ;
 int CONTEXT_UTF8 ;
 int DecideOverLiteralContextModeling (size_t const*,int const,size_t const,size_t const,int ,int ,size_t*,int const**) ;
 int DestroyMetaBlockSplit (int *,int *) ;
 int InitMetaBlockSplit (int *) ;
 int MAX_QUALITY_FOR_STATIC_ENTROPY_CODES ;
 int MIN_QUALITY_FOR_BLOCK_SPLIT ;
 int MIN_QUALITY_FOR_HQ_BLOCK_SPLITTING ;
 int MIN_QUALITY_FOR_OPTIMIZE_HISTOGRAMS ;
 int MIN_QUALITY_FOR_RECOMPUTE_DISTANCE_PREFIXES ;
 int RecomputeDistancePrefixes (int *,size_t const,int,int) ;
 int ShouldCompress (size_t const*,size_t const,int const,size_t const,size_t const,size_t const) ;
 int WrapPosition (int const) ;
 int kMinUTF8Ratio ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static void WriteMetaBlockInternal(MemoryManager* m,
                                   const uint8_t* data,
                                   const size_t mask,
                                   const uint64_t last_flush_pos,
                                   const size_t bytes,
                                   const BROTLI_BOOL is_last,
                                   const BrotliEncoderParams* params,
                                   const uint8_t prev_byte,
                                   const uint8_t prev_byte2,
                                   const size_t num_literals,
                                   const size_t num_commands,
                                   Command* commands,
                                   const int* saved_dist_cache,
                                   int* dist_cache,
                                   size_t* storage_ix,
                                   uint8_t* storage) {
  const uint32_t wrapped_last_flush_pos = WrapPosition(last_flush_pos);
  uint8_t last_byte;
  uint8_t last_byte_bits;
  uint32_t num_direct_distance_codes = 0;
  uint32_t distance_postfix_bits = 0;

  if (bytes == 0) {

    BrotliWriteBits(2, 3, storage_ix, storage);
    *storage_ix = (*storage_ix + 7u) & ~7u;
    return;
  }

  if (!ShouldCompress(data, mask, last_flush_pos, bytes,
                      num_literals, num_commands)) {


    memcpy(dist_cache, saved_dist_cache, 4 * sizeof(dist_cache[0]));
    BrotliStoreUncompressedMetaBlock(is_last, data,
                                     wrapped_last_flush_pos, mask, bytes,
                                     storage_ix, storage);
    return;
  }

  last_byte = storage[0];
  last_byte_bits = (uint8_t)(*storage_ix & 0xff);
  if (params->quality >= MIN_QUALITY_FOR_RECOMPUTE_DISTANCE_PREFIXES &&
      params->mode == BROTLI_MODE_FONT) {
    num_direct_distance_codes = 12;
    distance_postfix_bits = 1;
    RecomputeDistancePrefixes(commands,
                              num_commands,
                              num_direct_distance_codes,
                              distance_postfix_bits);
  }
  if (params->quality <= MAX_QUALITY_FOR_STATIC_ENTROPY_CODES) {
    BrotliStoreMetaBlockFast(m, data, wrapped_last_flush_pos,
                             bytes, mask, is_last,
                             commands, num_commands,
                             storage_ix, storage);
    if (BROTLI_IS_OOM(m)) return;
  } else if (params->quality < MIN_QUALITY_FOR_BLOCK_SPLIT) {
    BrotliStoreMetaBlockTrivial(m, data, wrapped_last_flush_pos,
                                bytes, mask, is_last,
                                commands, num_commands,
                                storage_ix, storage);
    if (BROTLI_IS_OOM(m)) return;
  } else {
    ContextType literal_context_mode = CONTEXT_UTF8;
    MetaBlockSplit mb;
    InitMetaBlockSplit(&mb);
    if (params->quality < MIN_QUALITY_FOR_HQ_BLOCK_SPLITTING) {
      size_t num_literal_contexts = 1;
      const uint32_t* literal_context_map = ((void*)0);
      if (!params->disable_literal_context_modeling) {
        DecideOverLiteralContextModeling(
            data, wrapped_last_flush_pos, bytes, mask, params->quality,
            params->size_hint, &num_literal_contexts,
            &literal_context_map);
      }
      BrotliBuildMetaBlockGreedy(m, data, wrapped_last_flush_pos, mask,
          prev_byte, prev_byte2, literal_context_mode, num_literal_contexts,
          literal_context_map, commands, num_commands, &mb);
      if (BROTLI_IS_OOM(m)) return;
    } else {
      if (!BrotliIsMostlyUTF8(data, wrapped_last_flush_pos, mask, bytes,
                              kMinUTF8Ratio)) {
        literal_context_mode = CONTEXT_SIGNED;
      }
      BrotliBuildMetaBlock(m, data, wrapped_last_flush_pos, mask, params,
                           prev_byte, prev_byte2,
                           commands, num_commands,
                           literal_context_mode,
                           &mb);
      if (BROTLI_IS_OOM(m)) return;
    }
    if (params->quality >= MIN_QUALITY_FOR_OPTIMIZE_HISTOGRAMS) {
      BrotliOptimizeHistograms(num_direct_distance_codes,
                               distance_postfix_bits,
                               &mb);
    }
    BrotliStoreMetaBlock(m, data, wrapped_last_flush_pos, bytes, mask,
                         prev_byte, prev_byte2,
                         is_last,
                         num_direct_distance_codes,
                         distance_postfix_bits,
                         literal_context_mode,
                         commands, num_commands,
                         &mb,
                         storage_ix, storage);
    if (BROTLI_IS_OOM(m)) return;
    DestroyMetaBlockSplit(m, &mb);
  }
  if (bytes + 4 < (*storage_ix >> 3)) {

    memcpy(dist_cache, saved_dist_cache, 4 * sizeof(dist_cache[0]));
    storage[0] = last_byte;
    *storage_ix = last_byte_bits;
    BrotliStoreUncompressedMetaBlock(is_last, data,
                                     wrapped_last_flush_pos, mask,
                                     bytes, storage_ix, storage);
  }
}
