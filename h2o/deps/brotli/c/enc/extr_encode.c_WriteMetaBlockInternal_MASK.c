#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  dist_cache ;
struct TYPE_4__ {scalar_t__ mode; int /*<<< orphan*/  quality; int /*<<< orphan*/  size_hint; int /*<<< orphan*/  disable_literal_context_modeling; } ;
typedef  int /*<<< orphan*/  MetaBlockSplit ;
typedef  int /*<<< orphan*/  MemoryManager ;
typedef  int /*<<< orphan*/  ContextType ;
typedef  int /*<<< orphan*/  Command ;
typedef  TYPE_1__ BrotliEncoderParams ;
typedef  int /*<<< orphan*/  BROTLI_BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ BROTLI_MODE_FONT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t const*,int const,size_t const,TYPE_1__ const*,size_t const,size_t const,int /*<<< orphan*/ *,size_t const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t const*,int const,size_t const,size_t const,size_t const,int /*<<< orphan*/ ,size_t,int const*,int /*<<< orphan*/ *,size_t const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (size_t const*,int const,size_t const,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t const*,int const,size_t const,size_t const,size_t const,size_t const,int /*<<< orphan*/  const,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t const,int /*<<< orphan*/ *,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t const*,int const,size_t const,size_t const,int /*<<< orphan*/  const,int /*<<< orphan*/ *,size_t const,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t const*,int const,size_t const,size_t const,int /*<<< orphan*/  const,int /*<<< orphan*/ *,size_t const,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const,size_t const*,int const,size_t const,size_t const,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int,int,size_t*,size_t*) ; 
 int /*<<< orphan*/  CONTEXT_SIGNED ; 
 int /*<<< orphan*/  CONTEXT_UTF8 ; 
 int /*<<< orphan*/  FUNC10 (size_t const*,int const,size_t const,size_t const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int const**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_QUALITY_FOR_STATIC_ENTROPY_CODES ; 
 int /*<<< orphan*/  MIN_QUALITY_FOR_BLOCK_SPLIT ; 
 int /*<<< orphan*/  MIN_QUALITY_FOR_HQ_BLOCK_SPLITTING ; 
 int /*<<< orphan*/  MIN_QUALITY_FOR_OPTIMIZE_HISTOGRAMS ; 
 int /*<<< orphan*/  MIN_QUALITY_FOR_RECOMPUTE_DISTANCE_PREFIXES ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,size_t const,int,int) ; 
 int /*<<< orphan*/  FUNC14 (size_t const*,size_t const,int /*<<< orphan*/  const,size_t const,size_t const,size_t const) ; 
 int FUNC15 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  kMinUTF8Ratio ; 
 int /*<<< orphan*/  FUNC16 (int*,int const*,int) ; 

__attribute__((used)) static void FUNC17(MemoryManager* m,
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
  const uint32_t wrapped_last_flush_pos = FUNC15(last_flush_pos);
  uint8_t last_byte;
  uint8_t last_byte_bits;
  uint32_t num_direct_distance_codes = 0;
  uint32_t distance_postfix_bits = 0;

  if (bytes == 0) {
    /* Write the ISLAST and ISEMPTY bits. */
    FUNC9(2, 3, storage_ix, storage);
    *storage_ix = (*storage_ix + 7u) & ~7u;
    return;
  }

  if (!FUNC14(data, mask, last_flush_pos, bytes,
                      num_literals, num_commands)) {
    /* Restore the distance cache, as its last update by
       CreateBackwardReferences is now unused. */
    FUNC16(dist_cache, saved_dist_cache, 4 * sizeof(dist_cache[0]));
    FUNC8(is_last, data,
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
    FUNC13(commands,
                              num_commands,
                              num_direct_distance_codes,
                              distance_postfix_bits);
  }
  if (params->quality <= MAX_QUALITY_FOR_STATIC_ENTROPY_CODES) {
    FUNC6(m, data, wrapped_last_flush_pos,
                             bytes, mask, is_last,
                             commands, num_commands,
                             storage_ix, storage);
    if (FUNC0(m)) return;
  } else if (params->quality < MIN_QUALITY_FOR_BLOCK_SPLIT) {
    FUNC7(m, data, wrapped_last_flush_pos,
                                bytes, mask, is_last,
                                commands, num_commands,
                                storage_ix, storage);
    if (FUNC0(m)) return;
  } else {
    ContextType literal_context_mode = CONTEXT_UTF8;
    MetaBlockSplit mb;
    FUNC12(&mb);
    if (params->quality < MIN_QUALITY_FOR_HQ_BLOCK_SPLITTING) {
      size_t num_literal_contexts = 1;
      const uint32_t* literal_context_map = NULL;
      if (!params->disable_literal_context_modeling) {
        FUNC10(
            data, wrapped_last_flush_pos, bytes, mask, params->quality,
            params->size_hint, &num_literal_contexts,
            &literal_context_map);
      }
      FUNC2(m, data, wrapped_last_flush_pos, mask,
          prev_byte, prev_byte2, literal_context_mode, num_literal_contexts,
          literal_context_map, commands, num_commands, &mb);
      if (FUNC0(m)) return;
    } else {
      if (!FUNC3(data, wrapped_last_flush_pos, mask, bytes,
                              kMinUTF8Ratio)) {
        literal_context_mode = CONTEXT_SIGNED;
      }
      FUNC1(m, data, wrapped_last_flush_pos, mask, params,
                           prev_byte, prev_byte2,
                           commands, num_commands,
                           literal_context_mode,
                           &mb);
      if (FUNC0(m)) return;
    }
    if (params->quality >= MIN_QUALITY_FOR_OPTIMIZE_HISTOGRAMS) {
      FUNC4(num_direct_distance_codes,
                               distance_postfix_bits,
                               &mb);
    }
    FUNC5(m, data, wrapped_last_flush_pos, bytes, mask,
                         prev_byte, prev_byte2,
                         is_last,
                         num_direct_distance_codes,
                         distance_postfix_bits,
                         literal_context_mode,
                         commands, num_commands,
                         &mb,
                         storage_ix, storage);
    if (FUNC0(m)) return;
    FUNC11(m, &mb);
  }
  if (bytes + 4 < (*storage_ix >> 3)) {
    /* Restore the distance cache and last byte. */
    FUNC16(dist_cache, saved_dist_cache, 4 * sizeof(dist_cache[0]));
    storage[0] = last_byte;
    *storage_ix = last_byte_bits;
    FUNC8(is_last, data,
                                     wrapped_last_flush_pos, mask,
                                     bytes, storage_ix, storage);
  }
}