
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int sysfs_lock; TYPE_2__* elevator; } ;
struct list_head {int dummy; } ;
struct blk_mq_qe_pair {TYPE_1__* type; int node; struct request_queue* q; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int elevator_owner; } ;


 int GFP_NOIO ;
 int INIT_LIST_HEAD (int *) ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int __module_get (int ) ;
 int elevator_switch_mq (struct request_queue*,int *) ;
 struct blk_mq_qe_pair* kmalloc (int,int) ;
 int list_add (int *,struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool blk_mq_elv_switch_none(struct list_head *head,
  struct request_queue *q)
{
 struct blk_mq_qe_pair *qe;

 if (!q->elevator)
  return 1;

 qe = kmalloc(sizeof(*qe), GFP_NOIO | __GFP_NOWARN | __GFP_NORETRY);
 if (!qe)
  return 0;

 INIT_LIST_HEAD(&qe->node);
 qe->q = q;
 qe->type = q->elevator->type;
 list_add(&qe->node, head);

 mutex_lock(&q->sysfs_lock);







 __module_get(qe->type->elevator_owner);
 elevator_switch_mq(q, ((void*)0));
 mutex_unlock(&q->sysfs_lock);

 return 1;
}
