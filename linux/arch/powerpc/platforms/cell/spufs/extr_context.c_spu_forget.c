
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {scalar_t__ state; struct mm_struct* owner; int state_mutex; } ;
struct mm_struct {int dummy; } ;


 scalar_t__ SPU_STATE_SAVED ;
 int mmput (struct mm_struct*) ;
 int mutex_lock (int *) ;
 int spu_deactivate (struct spu_context*) ;
 int spu_release (struct spu_context*) ;

void spu_forget(struct spu_context *ctx)
{
 struct mm_struct *mm;






 mutex_lock(&ctx->state_mutex);
 if (ctx->state != SPU_STATE_SAVED)
  spu_deactivate(ctx);

 mm = ctx->owner;
 ctx->owner = ((void*)0);
 mmput(mm);
 spu_release(ctx);
}
