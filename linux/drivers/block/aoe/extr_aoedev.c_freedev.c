
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoetgt {int dummy; } ;
struct aoedev {int flags; int ntargets; int lock; int sysminor; int bufpool; struct aoetgt** targets; int blkq; int tag_set; scalar_t__ gd; int timer; } ;


 int DEVFL_FREED ;
 int DEVFL_FREEING ;
 int DEVFL_TKILL ;
 int aoedisk_rm_debugfs (struct aoedev*) ;
 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int del_gendisk (scalar_t__) ;
 int del_timer_sync (int *) ;
 int freetgt (struct aoedev*,struct aoetgt*) ;
 int mempool_destroy (int ) ;
 int minor_free (int ) ;
 int put_disk (scalar_t__) ;
 int skbpoolfree (struct aoedev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
freedev(struct aoedev *d)
{
 struct aoetgt **t, **e;
 int freeing = 0;
 unsigned long flags;

 spin_lock_irqsave(&d->lock, flags);
 if (d->flags & DEVFL_TKILL
 && !(d->flags & DEVFL_FREEING)) {
  d->flags |= DEVFL_FREEING;
  freeing = 1;
 }
 spin_unlock_irqrestore(&d->lock, flags);
 if (!freeing)
  return;

 del_timer_sync(&d->timer);
 if (d->gd) {
  aoedisk_rm_debugfs(d);
  del_gendisk(d->gd);
  put_disk(d->gd);
  blk_mq_free_tag_set(&d->tag_set);
  blk_cleanup_queue(d->blkq);
 }
 t = d->targets;
 e = t + d->ntargets;
 for (; t < e && *t; t++)
  freetgt(d, *t);

 mempool_destroy(d->bufpool);
 skbpoolfree(d);
 minor_free(d->sysminor);

 spin_lock_irqsave(&d->lock, flags);
 d->flags |= DEVFL_FREED;
 spin_unlock_irqrestore(&d->lock, flags);
}
