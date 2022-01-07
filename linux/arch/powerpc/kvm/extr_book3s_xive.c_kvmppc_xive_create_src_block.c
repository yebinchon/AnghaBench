
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_xive_src_block {int id; TYPE_1__* irq_state; } ;
struct kvmppc_xive {int max_sbid; struct kvmppc_xive_src_block** src_blocks; int lock; } ;
struct TYPE_2__ {int number; void* act_priority; void* saved_priority; void* guest_priority; scalar_t__ eisn; } ;


 int GFP_KERNEL ;
 int KVMPPC_XICS_ICS_SHIFT ;
 int KVMPPC_XICS_IRQ_PER_ICS ;
 void* MASKED ;
 struct kvmppc_xive_src_block* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smp_wmb () ;

struct kvmppc_xive_src_block *kvmppc_xive_create_src_block(
 struct kvmppc_xive *xive, int irq)
{
 struct kvmppc_xive_src_block *sb;
 int i, bid;

 bid = irq >> KVMPPC_XICS_ICS_SHIFT;

 mutex_lock(&xive->lock);


 if (xive->src_blocks[bid])
  goto out;


 sb = kzalloc(sizeof(*sb), GFP_KERNEL);
 if (!sb)
  goto out;

 sb->id = bid;

 for (i = 0; i < KVMPPC_XICS_IRQ_PER_ICS; i++) {
  sb->irq_state[i].number = (bid << KVMPPC_XICS_ICS_SHIFT) | i;
  sb->irq_state[i].eisn = 0;
  sb->irq_state[i].guest_priority = MASKED;
  sb->irq_state[i].saved_priority = MASKED;
  sb->irq_state[i].act_priority = MASKED;
 }
 smp_wmb();
 xive->src_blocks[bid] = sb;

 if (bid > xive->max_sbid)
  xive->max_sbid = bid;

out:
 mutex_unlock(&xive->lock);
 return xive->src_blocks[bid];
}
