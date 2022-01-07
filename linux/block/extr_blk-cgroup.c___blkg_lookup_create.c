
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct blkcg_gq* root_blkg; int queue_lock; } ;
struct blkcg_gq {int dummy; } ;
struct blkcg {int dummy; } ;


 scalar_t__ IS_ERR (struct blkcg_gq*) ;
 int WARN_ON_ONCE (int) ;
 struct blkcg_gq* __blkg_lookup (struct blkcg*,struct request_queue*,int) ;
 struct blkcg* blkcg_parent (struct blkcg*) ;
 struct blkcg_gq* blkg_create (struct blkcg*,struct request_queue*,int *) ;
 int lockdep_assert_held (int *) ;
 int rcu_read_lock_held () ;

struct blkcg_gq *__blkg_lookup_create(struct blkcg *blkcg,
          struct request_queue *q)
{
 struct blkcg_gq *blkg;

 WARN_ON_ONCE(!rcu_read_lock_held());
 lockdep_assert_held(&q->queue_lock);

 blkg = __blkg_lookup(blkcg, q, 1);
 if (blkg)
  return blkg;






 while (1) {
  struct blkcg *pos = blkcg;
  struct blkcg *parent = blkcg_parent(blkcg);
  struct blkcg_gq *ret_blkg = q->root_blkg;

  while (parent) {
   blkg = __blkg_lookup(parent, q, 0);
   if (blkg) {

    ret_blkg = blkg;
    break;
   }
   pos = parent;
   parent = blkcg_parent(parent);
  }

  blkg = blkg_create(pos, q, ((void*)0));
  if (IS_ERR(blkg))
   return ret_blkg;
  if (pos == blkcg)
   return blkg;
 }
}
