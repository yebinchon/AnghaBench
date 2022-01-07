
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulong ;
struct sk_buff {int dummy; } ;
struct frame {int head; TYPE_2__* t; struct sk_buff* r_skb; } ;
struct TYPE_8__ {int lock; int head; } ;
struct TYPE_7__ {int active; } ;
struct TYPE_6__ {TYPE_1__* d; } ;
struct TYPE_5__ {int aoeminor; } ;


 TYPE_4__* iocq ;
 int * ktiowq ;
 TYPE_3__* kts ;
 int list_add_tail (int *,int *) ;
 int ncpus ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void
ktcomplete(struct frame *f, struct sk_buff *skb)
{
 int id;
 ulong flags;

 f->r_skb = skb;
 id = f->t->d->aoeminor % ncpus;
 spin_lock_irqsave(&iocq[id].lock, flags);
 if (!kts[id].active) {
  spin_unlock_irqrestore(&iocq[id].lock, flags);




  id = 0;
  spin_lock_irqsave(&iocq[id].lock, flags);
 }
 list_add_tail(&f->head, &iocq[id].head);
 spin_unlock_irqrestore(&iocq[id].lock, flags);
 wake_up(&ktiowq[id]);
}
