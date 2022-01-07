
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct elevator_queue* elevator; } ;
struct kyber_queue_data {int dummy; } ;
struct elevator_type {int dummy; } ;
struct elevator_queue {struct kyber_queue_data* elevator_data; int kobj; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct kyber_queue_data*) ;
 int PTR_ERR (struct kyber_queue_data*) ;
 int blk_stat_enable_accounting (struct request_queue*) ;
 struct elevator_queue* elevator_alloc (struct request_queue*,struct elevator_type*) ;
 int kobject_put (int *) ;
 struct kyber_queue_data* kyber_queue_data_alloc (struct request_queue*) ;

__attribute__((used)) static int kyber_init_sched(struct request_queue *q, struct elevator_type *e)
{
 struct kyber_queue_data *kqd;
 struct elevator_queue *eq;

 eq = elevator_alloc(q, e);
 if (!eq)
  return -ENOMEM;

 kqd = kyber_queue_data_alloc(q);
 if (IS_ERR(kqd)) {
  kobject_put(&eq->kobj);
  return PTR_ERR(kqd);
 }

 blk_stat_enable_accounting(q);

 eq->elevator_data = kqd;
 q->elevator = eq;

 return 0;
}
