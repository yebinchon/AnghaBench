
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* brotli_free_func ) (void*,TYPE_1__*) ;
struct TYPE_7__ {void* opaque; int (* free_func ) (void*,TYPE_1__*) ;} ;
struct TYPE_6__ {TYPE_2__ memory_manager_; } ;
typedef TYPE_2__ MemoryManager ;
typedef TYPE_1__ BrotliEncoderState ;


 int BrotliEncoderCleanupState (TYPE_1__*) ;

void BrotliEncoderDestroyInstance(BrotliEncoderState* state) {
  if (!state) {
    return;
  } else {
    MemoryManager* m = &state->memory_manager_;
    brotli_free_func free_func = m->free_func;
    void* opaque = m->opaque;
    BrotliEncoderCleanupState(state);
    free_func(opaque, state);
  }
}
