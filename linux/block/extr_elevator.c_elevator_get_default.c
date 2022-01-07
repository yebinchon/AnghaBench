
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int nr_hw_queues; } ;
struct elevator_type {int dummy; } ;


 struct elevator_type* elevator_get (struct request_queue*,char*,int) ;

__attribute__((used)) static struct elevator_type *elevator_get_default(struct request_queue *q)
{
 if (q->nr_hw_queues != 1)
  return ((void*)0);

 return elevator_get(q, "mq-deadline", 0);
}
