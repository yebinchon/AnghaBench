
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nullb_queue {TYPE_1__* dev; struct nullb_cmd* cmds; } ;
struct TYPE_4__ {int function; } ;
struct nullb_cmd {unsigned int tag; TYPE_2__ timer; struct nullb_queue* nq; } ;
struct TYPE_3__ {scalar_t__ irqmode; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL ;
 scalar_t__ NULL_IRQ_TIMER ;
 unsigned int get_tag (struct nullb_queue*) ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 int null_cmd_timer_expired ;

__attribute__((used)) static struct nullb_cmd *__alloc_cmd(struct nullb_queue *nq)
{
 struct nullb_cmd *cmd;
 unsigned int tag;

 tag = get_tag(nq);
 if (tag != -1U) {
  cmd = &nq->cmds[tag];
  cmd->tag = tag;
  cmd->nq = nq;
  if (nq->dev->irqmode == NULL_IRQ_TIMER) {
   hrtimer_init(&cmd->timer, CLOCK_MONOTONIC,
         HRTIMER_MODE_REL);
   cmd->timer.function = null_cmd_timer_expired;
  }
  return cmd;
 }

 return ((void*)0);
}
