
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct switch_log_entry {int spu_id; void* val; void* type; int timebase; int tstamp; } ;
struct spu_context {TYPE_1__* switch_log; } ;
struct spu {int number; } ;
struct TYPE_2__ {int head; int wait; struct switch_log_entry* log; } ;


 int SWITCH_LOG_BUFSIZE ;
 int get_tb () ;
 int ktime_get_ts64 (int *) ;
 int spufs_switch_log_avail (struct spu_context*) ;
 int wake_up (int *) ;

void spu_switch_log_notify(struct spu *spu, struct spu_context *ctx,
  u32 type, u32 val)
{
 if (!ctx->switch_log)
  return;

 if (spufs_switch_log_avail(ctx) > 1) {
  struct switch_log_entry *p;

  p = ctx->switch_log->log + ctx->switch_log->head;
  ktime_get_ts64(&p->tstamp);
  p->timebase = get_tb();
  p->spu_id = spu ? spu->number : -1;
  p->type = type;
  p->val = val;

  ctx->switch_log->head =
   (ctx->switch_log->head + 1) % SWITCH_LOG_BUFSIZE;
 }

 wake_up(&ctx->switch_log->wait);
}
