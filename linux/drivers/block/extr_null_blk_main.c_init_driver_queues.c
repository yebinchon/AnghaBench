
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nullb_queue {int dummy; } ;
struct nullb {int nr_queues; struct nullb_queue* queues; TYPE_1__* dev; } ;
struct TYPE_2__ {int submit_queues; } ;


 int null_init_queue (struct nullb*,struct nullb_queue*) ;
 int setup_commands (struct nullb_queue*) ;

__attribute__((used)) static int init_driver_queues(struct nullb *nullb)
{
 struct nullb_queue *nq;
 int i, ret = 0;

 for (i = 0; i < nullb->dev->submit_queues; i++) {
  nq = &nullb->queues[i];

  null_init_queue(nullb, nq);

  ret = setup_commands(nq);
  if (ret)
   return ret;
  nullb->nr_queues++;
 }
 return 0;
}
