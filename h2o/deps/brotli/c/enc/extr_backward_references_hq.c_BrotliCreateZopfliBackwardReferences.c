
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int lgwin; } ;
typedef int MemoryManager ;
typedef int HasherHandle ;
typedef int Command ;
typedef TYPE_1__ BrotliEncoderParams ;
typedef int BrotliDictionary ;


 int BROTLI_ALLOC (int *,int,size_t) ;
 int BROTLI_FREE (int *,int) ;
 scalar_t__ BROTLI_IS_OOM (int *) ;
 size_t BROTLI_MAX_BACKWARD_LIMIT (int ) ;
 int BrotliInitZopfliNodes (int,size_t) ;
 scalar_t__ BrotliZopfliComputeShortestPath (int *,int const*,size_t,size_t,int const*,size_t,TYPE_1__ const*,size_t const,int*,int ,int) ;
 int BrotliZopfliCreateCommands (size_t,size_t,size_t const,int,int*,size_t*,TYPE_1__ const*,int *,size_t*) ;
 int ZopfliNode ;
 int nodes ;

void BrotliCreateZopfliBackwardReferences(
    MemoryManager* m, const BrotliDictionary* dictionary, size_t num_bytes,
    size_t position, const uint8_t* ringbuffer, size_t ringbuffer_mask,
    const BrotliEncoderParams* params, HasherHandle hasher, int* dist_cache,
    size_t* last_insert_len, Command* commands, size_t* num_commands,
    size_t* num_literals) {
  const size_t max_backward_limit = BROTLI_MAX_BACKWARD_LIMIT(params->lgwin);
  ZopfliNode* nodes;
  nodes = BROTLI_ALLOC(m, ZopfliNode, num_bytes + 1);
  if (BROTLI_IS_OOM(m)) return;
  BrotliInitZopfliNodes(nodes, num_bytes + 1);
  *num_commands += BrotliZopfliComputeShortestPath(m, dictionary, num_bytes,
      position, ringbuffer, ringbuffer_mask, params, max_backward_limit,
      dist_cache, hasher, nodes);
  if (BROTLI_IS_OOM(m)) return;
  BrotliZopfliCreateCommands(num_bytes, position, max_backward_limit, nodes,
      dist_cache, last_insert_len, params, commands, num_literals);
  BROTLI_FREE(m, nodes);
}
