
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb {int nr_queues; int * queues; } ;


 int cleanup_queue (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void cleanup_queues(struct nullb *nullb)
{
 int i;

 for (i = 0; i < nullb->nr_queues; i++)
  cleanup_queue(&nullb->queues[i]);

 kfree(nullb->queues);
}
