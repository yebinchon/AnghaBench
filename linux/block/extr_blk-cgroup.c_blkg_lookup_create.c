
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
struct blkcg_gq {int dummy; } ;
struct blkcg {int dummy; } ;


 struct blkcg_gq* __blkg_lookup_create (struct blkcg*,struct request_queue*) ;
 struct blkcg_gq* blkg_lookup (struct blkcg*,struct request_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

struct blkcg_gq *blkg_lookup_create(struct blkcg *blkcg,
        struct request_queue *q)
{
 struct blkcg_gq *blkg = blkg_lookup(blkcg, q);

 if (unlikely(!blkg)) {
  unsigned long flags;

  spin_lock_irqsave(&q->queue_lock, flags);
  blkg = __blkg_lookup_create(blkcg, q);
  spin_unlock_irqrestore(&q->queue_lock, flags);
 }

 return blkg;
}
