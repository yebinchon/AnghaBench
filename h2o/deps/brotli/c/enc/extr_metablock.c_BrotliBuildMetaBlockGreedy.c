
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int MetaBlockSplit ;
typedef int MemoryManager ;
typedef int ContextType ;
typedef int Command ;


 int BrotliBuildMetaBlockGreedyInternal (int *,int const*,size_t,size_t,int ,int ,int ,size_t,int const*,int const*,size_t,int *) ;

void BrotliBuildMetaBlockGreedy(MemoryManager* m,
                                const uint8_t* ringbuffer,
                                size_t pos,
                                size_t mask,
                                uint8_t prev_byte,
                                uint8_t prev_byte2,
                                ContextType literal_context_mode,
                                size_t num_contexts,
                                const uint32_t* static_context_map,
                                const Command* commands,
                                size_t n_commands,
                                MetaBlockSplit* mb) {
  if (num_contexts == 1) {
    BrotliBuildMetaBlockGreedyInternal(m, ringbuffer, pos, mask, prev_byte,
        prev_byte2, literal_context_mode, 1, ((void*)0), commands, n_commands, mb);
  } else {
    BrotliBuildMetaBlockGreedyInternal(m, ringbuffer, pos, mask, prev_byte,
        prev_byte2, literal_context_mode, num_contexts, static_context_map,
        commands, n_commands, mb);
  }
}
