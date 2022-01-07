
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int node; } ;
struct elevator_type {int dummy; } ;
struct elevator_queue {int hash; int sysfs_lock; int kobj; struct elevator_type* type; } ;


 int GFP_KERNEL ;
 int elv_ktype ;
 int hash_init (int ) ;
 int kobject_init (int *,int *) ;
 struct elevator_queue* kzalloc_node (int,int ,int ) ;
 int mutex_init (int *) ;
 scalar_t__ unlikely (int) ;

struct elevator_queue *elevator_alloc(struct request_queue *q,
      struct elevator_type *e)
{
 struct elevator_queue *eq;

 eq = kzalloc_node(sizeof(*eq), GFP_KERNEL, q->node);
 if (unlikely(!eq))
  return ((void*)0);

 eq->type = e;
 kobject_init(&eq->kobj, &elv_ktype);
 mutex_init(&eq->sysfs_lock);
 hash_init(eq->hash);

 return eq;
}
