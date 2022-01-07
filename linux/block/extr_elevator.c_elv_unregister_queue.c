
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct elevator_queue* elevator; } ;
struct elevator_queue {scalar_t__ registered; int kobj; } ;


 int KOBJ_REMOVE ;
 int kobject_del (int *) ;
 int kobject_uevent (int *,int ) ;
 int wbt_enable_default (struct request_queue*) ;

void elv_unregister_queue(struct request_queue *q)
{
 if (q) {
  struct elevator_queue *e = q->elevator;

  kobject_uevent(&e->kobj, KOBJ_REMOVE);
  kobject_del(&e->kobj);

  e->registered = 0;

  wbt_enable_default(q);
 }
}
