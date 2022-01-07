
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct aoedev* private; } ;
struct TYPE_4__ {int * next; } ;
struct aoetgt {struct aoeif* ifs; int wpkts; int rpkts; int taint; int ssthresh; int nframes; int maxout; int nout; int addr; TYPE_2__ ffree; int falloc; } ;
struct aoeif {TYPE_1__* nd; } ;
struct aoedev {char rttavg; int rttdev; int ntargets; int lock; struct aoetgt** targets; int ref; int maxbcnt; int kicked; int skbpool; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (struct aoeif*) ;
 int RTTDSCALE ;
 char RTTSCALE ;
 scalar_t__ list_empty (TYPE_2__*) ;
 int seq_printf (struct seq_file*,char*,char,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int aoedisk_debugfs_show(struct seq_file *s, void *ignored)
{
 struct aoedev *d;
 struct aoetgt **t, **te;
 struct aoeif *ifp, *ife;
 unsigned long flags;
 char c;

 d = s->private;
 seq_printf(s, "rttavg: %d rttdev: %d\n",
  d->rttavg >> RTTSCALE,
  d->rttdev >> RTTDSCALE);
 seq_printf(s, "nskbpool: %d\n", skb_queue_len(&d->skbpool));
 seq_printf(s, "kicked: %ld\n", d->kicked);
 seq_printf(s, "maxbcnt: %ld\n", d->maxbcnt);
 seq_printf(s, "ref: %ld\n", d->ref);

 spin_lock_irqsave(&d->lock, flags);
 t = d->targets;
 te = t + d->ntargets;
 for (; t < te && *t; t++) {
  c = '\t';
  seq_printf(s, "falloc: %ld\n", (*t)->falloc);
  seq_printf(s, "ffree: %p\n",
   list_empty(&(*t)->ffree) ? ((void*)0) : (*t)->ffree.next);
  seq_printf(s, "%pm:%d:%d:%d\n", (*t)->addr, (*t)->nout,
   (*t)->maxout, (*t)->nframes);
  seq_printf(s, "\tssthresh:%d\n", (*t)->ssthresh);
  seq_printf(s, "\ttaint:%d\n", (*t)->taint);
  seq_printf(s, "\tr:%d\n", (*t)->rpkts);
  seq_printf(s, "\tw:%d\n", (*t)->wpkts);
  ifp = (*t)->ifs;
  ife = ifp + ARRAY_SIZE((*t)->ifs);
  for (; ifp->nd && ifp < ife; ifp++) {
   seq_printf(s, "%c%s", c, ifp->nd->name);
   c = ',';
  }
  seq_puts(s, "\n");
 }
 spin_unlock_irqrestore(&d->lock, flags);

 return 0;
}
