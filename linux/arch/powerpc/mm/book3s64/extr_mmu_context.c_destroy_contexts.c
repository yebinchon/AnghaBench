
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* extended_id; int hash_context; } ;
typedef TYPE_1__ mm_context_t ;


 int ARRAY_SIZE (int*) ;
 int ida_free (int *,int) ;
 int kfree (int ) ;
 int mmu_context_ida ;

__attribute__((used)) static void destroy_contexts(mm_context_t *ctx)
{
 int index, context_id;

 for (index = 0; index < ARRAY_SIZE(ctx->extended_id); index++) {
  context_id = ctx->extended_id[index];
  if (context_id)
   ida_free(&mmu_context_ida, context_id);
 }
 kfree(ctx->hash_context);
}
