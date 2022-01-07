
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmiaction {int flags; int list; int irq_work; int handler; } ;
struct nmi_desc {int lock; int head; } ;


 int EINVAL ;
 int NMI_FLAG_FIRST ;
 unsigned int NMI_IO_CHECK ;
 unsigned int NMI_SERR ;
 int WARN_ON_ONCE (int) ;
 int init_irq_work (int *,int ) ;
 int list_add_rcu (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;
 int list_empty (int *) ;
 int nmi_max_handler ;
 struct nmi_desc* nmi_to_desc (unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int __register_nmi_handler(unsigned int type, struct nmiaction *action)
{
 struct nmi_desc *desc = nmi_to_desc(type);
 unsigned long flags;

 if (!action->handler)
  return -EINVAL;

 init_irq_work(&action->irq_work, nmi_max_handler);

 raw_spin_lock_irqsave(&desc->lock, flags);





 WARN_ON_ONCE(type == NMI_SERR && !list_empty(&desc->head));
 WARN_ON_ONCE(type == NMI_IO_CHECK && !list_empty(&desc->head));





 if (action->flags & NMI_FLAG_FIRST)
  list_add_rcu(&action->list, &desc->head);
 else
  list_add_tail_rcu(&action->list, &desc->head);

 raw_spin_unlock_irqrestore(&desc->lock, flags);
 return 0;
}
