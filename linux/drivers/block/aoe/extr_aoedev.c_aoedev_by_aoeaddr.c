
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* ulong ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct aoedev {void* aoemajor; int aoeminor; int flags; int ref; int ntargets; struct aoedev* next; int rttdev; int rttavg; void* sysminor; int rexmitq; int * factive; void* targets; void* tgt; int * bufpool; TYPE_1__ timer; int skbpool; int rq_list; int lock; int work; } ;


 int DEVFL_TKILL ;
 int GFP_ATOMIC ;
 scalar_t__ HZ ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NFACTIVE ;
 int NTARGETS ;
 int RTTAVG_INIT ;
 int RTTDEV_INIT ;
 int add_timer (TYPE_1__*) ;
 int aoecmd_sleepwork ;
 struct aoedev* devlist ;
 int devlist_lock ;
 int dummy_timer ;
 scalar_t__ jiffies ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct aoedev*) ;
 scalar_t__ minor_get (void**,void*,int) ;
 int skb_queue_head_init (int *) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,void*) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,void*) ;
 int timer_setup (TYPE_1__*,int ,int ) ;

struct aoedev *
aoedev_by_aoeaddr(ulong maj, int min, int do_alloc)
{
 struct aoedev *d;
 int i;
 ulong flags;
 ulong sysminor = 0;

 spin_lock_irqsave(&devlist_lock, flags);

 for (d=devlist; d; d=d->next)
  if (d->aoemajor == maj && d->aoeminor == min) {
   spin_lock(&d->lock);
   if (d->flags & DEVFL_TKILL) {
    spin_unlock(&d->lock);
    d = ((void*)0);
    goto out;
   }
   d->ref++;
   spin_unlock(&d->lock);
   break;
  }
 if (d || !do_alloc || minor_get(&sysminor, maj, min) < 0)
  goto out;
 d = kcalloc(1, sizeof *d, GFP_ATOMIC);
 if (!d)
  goto out;
 d->targets = kcalloc(NTARGETS, sizeof(*d->targets), GFP_ATOMIC);
 if (!d->targets) {
  kfree(d);
  d = ((void*)0);
  goto out;
 }
 d->ntargets = NTARGETS;
 INIT_WORK(&d->work, aoecmd_sleepwork);
 spin_lock_init(&d->lock);
 INIT_LIST_HEAD(&d->rq_list);
 skb_queue_head_init(&d->skbpool);
 timer_setup(&d->timer, dummy_timer, 0);
 d->timer.expires = jiffies + HZ;
 add_timer(&d->timer);
 d->bufpool = ((void*)0);
 d->tgt = d->targets;
 d->ref = 1;
 for (i = 0; i < NFACTIVE; i++)
  INIT_LIST_HEAD(&d->factive[i]);
 INIT_LIST_HEAD(&d->rexmitq);
 d->sysminor = sysminor;
 d->aoemajor = maj;
 d->aoeminor = min;
 d->rttavg = RTTAVG_INIT;
 d->rttdev = RTTDEV_INIT;
 d->next = devlist;
 devlist = d;
 out:
 spin_unlock_irqrestore(&devlist_lock, flags);
 return d;
}
