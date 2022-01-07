
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mpool; } ;
typedef TYPE_1__ codegen_scope ;


 int codegen_error (TYPE_1__*,char*) ;
 void* mrb_pool_alloc (int ,size_t) ;

__attribute__((used)) static void*
codegen_palloc(codegen_scope *s, size_t len)
{
  void *p = mrb_pool_alloc(s->mpool, len);

  if (!p) codegen_error(s, "pool memory allocation");
  return p;
}
