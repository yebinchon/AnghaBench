
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int backing_dev_info; int * elevator; } ;


 int __elevator_exit (struct request_queue*,int *) ;
 int bdi_put (int ) ;
 int blkcg_exit_queue (struct request_queue*) ;
 int ioc_clear_queue (struct request_queue*) ;

__attribute__((used)) static void blk_exit_queue(struct request_queue *q)
{





 if (q->elevator) {
  ioc_clear_queue(q);
  __elevator_exit(q, q->elevator);
  q->elevator = ((void*)0);
 }






 blkcg_exit_queue(q);






 bdi_put(q->backing_dev_info);
}
