
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits_; int depths_; } ;
typedef int MemoryManager ;
typedef TYPE_1__ BlockEncoder ;


 int BROTLI_FREE (int *,int ) ;

__attribute__((used)) static void CleanupBlockEncoder(MemoryManager* m, BlockEncoder* self) {
  BROTLI_FREE(m, self->depths_);
  BROTLI_FREE(m, self->bits_);
}
