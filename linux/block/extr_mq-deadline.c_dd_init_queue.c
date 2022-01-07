
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct elevator_queue* elevator; int node; } ;
struct elevator_type {int dummy; } ;
struct elevator_queue {struct deadline_data* elevator_data; int kobj; } ;
struct deadline_data {int front_merges; int dispatch; int zone_lock; int lock; int fifo_batch; int writes_starved; int * fifo_expire; void** sort_list; int * fifo_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* RB_ROOT ;
 size_t READ ;
 size_t WRITE ;
 struct elevator_queue* elevator_alloc (struct request_queue*,struct elevator_type*) ;
 int fifo_batch ;
 int kobject_put (int *) ;
 struct deadline_data* kzalloc_node (int,int ,int ) ;
 int read_expire ;
 int spin_lock_init (int *) ;
 int write_expire ;
 int writes_starved ;

__attribute__((used)) static int dd_init_queue(struct request_queue *q, struct elevator_type *e)
{
 struct deadline_data *dd;
 struct elevator_queue *eq;

 eq = elevator_alloc(q, e);
 if (!eq)
  return -ENOMEM;

 dd = kzalloc_node(sizeof(*dd), GFP_KERNEL, q->node);
 if (!dd) {
  kobject_put(&eq->kobj);
  return -ENOMEM;
 }
 eq->elevator_data = dd;

 INIT_LIST_HEAD(&dd->fifo_list[READ]);
 INIT_LIST_HEAD(&dd->fifo_list[WRITE]);
 dd->sort_list[READ] = RB_ROOT;
 dd->sort_list[WRITE] = RB_ROOT;
 dd->fifo_expire[READ] = read_expire;
 dd->fifo_expire[WRITE] = write_expire;
 dd->writes_starved = writes_starved;
 dd->front_merges = 1;
 dd->fifo_batch = fifo_batch;
 spin_lock_init(&dd->lock);
 spin_lock_init(&dd->zone_lock);
 INIT_LIST_HEAD(&dd->dispatch);

 q->elevator = eq;
 return 0;
}
