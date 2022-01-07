
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* extended_id; int id; } ;
typedef TYPE_1__ mm_context_t ;


 int ARRAY_SIZE (int*) ;
 int hash__alloc_context_id () ;
 int ida_free (int *,int) ;
 int mmu_context_ida ;

__attribute__((used)) static int realloc_context_ids(mm_context_t *ctx)
{
 int i, id;
 for (i = 0; i < ARRAY_SIZE(ctx->extended_id); i++) {
  if (i == 0 || ctx->extended_id[i]) {
   id = hash__alloc_context_id();
   if (id < 0)
    goto error;

   ctx->extended_id[i] = id;
  }
 }


 return ctx->id;

error:
 for (i--; i >= 0; i--) {
  if (ctx->extended_id[i])
   ida_free(&mmu_context_ida, ctx->extended_id[i]);
 }

 return id;
}
