
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int flags; int state_mutex; int stop_wq; struct spu* spu; } ;
struct spu {int node; } ;


 int SPU_CREATE_NOSCHED ;
 struct spu_context* grab_runnable_context (int,int ) ;
 int mutex_lock (int *) ;
 int spu_release (struct spu_context*) ;
 int spu_schedule (struct spu*,struct spu_context*) ;
 int spu_unschedule (struct spu*,struct spu_context*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int __spu_deactivate(struct spu_context *ctx, int force, int max_prio)
{
 struct spu *spu = ctx->spu;
 struct spu_context *new = ((void*)0);

 if (spu) {
  new = grab_runnable_context(max_prio, spu->node);
  if (new || force) {
   spu_unschedule(spu, ctx, new == ((void*)0));
   if (new) {
    if (new->flags & SPU_CREATE_NOSCHED)
     wake_up(&new->stop_wq);
    else {
     spu_release(ctx);
     spu_schedule(spu, new);


     mutex_lock(&ctx->state_mutex);
    }
   }
  }
 }

 return new != ((void*)0);
}
