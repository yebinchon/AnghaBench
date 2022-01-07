
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int literal_buf_; int command_buf_; int large_table_; int hasher_; int ringbuffer_; int commands_; int storage_; int memory_manager_; } ;
typedef int MemoryManager ;
typedef TYPE_1__ BrotliEncoderState ;


 int BROTLI_FREE (int *,int ) ;
 scalar_t__ BROTLI_IS_OOM (int *) ;
 int BrotliWipeOutMemoryManager (int *) ;
 int DestroyHasher (int *,int *) ;
 int RingBufferFree (int *,int *) ;

__attribute__((used)) static void BrotliEncoderCleanupState(BrotliEncoderState* s) {
  MemoryManager* m = &s->memory_manager_;
  if (BROTLI_IS_OOM(m)) {
    BrotliWipeOutMemoryManager(m);
    return;
  }
  BROTLI_FREE(m, s->storage_);
  BROTLI_FREE(m, s->commands_);
  RingBufferFree(m, &s->ringbuffer_);
  DestroyHasher(m, &s->hasher_);
  BROTLI_FREE(m, s->large_table_);
  BROTLI_FREE(m, s->command_buf_);
  BROTLI_FREE(m, s->literal_buf_);
}
