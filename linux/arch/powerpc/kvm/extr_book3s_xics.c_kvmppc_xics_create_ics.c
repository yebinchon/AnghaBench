
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_xics {int max_icsid; struct kvmppc_ics** ics; } ;
struct kvmppc_ics {int icsid; TYPE_1__* irq_state; } ;
struct kvm {int lock; } ;
struct TYPE_2__ {int number; void* saved_priority; void* priority; } ;


 int GFP_KERNEL ;
 int KVMPPC_XICS_ICS_SHIFT ;
 int KVMPPC_XICS_IRQ_PER_ICS ;
 void* MASKED ;
 struct kvmppc_ics* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smp_wmb () ;

__attribute__((used)) static struct kvmppc_ics *kvmppc_xics_create_ics(struct kvm *kvm,
     struct kvmppc_xics *xics, int irq)
{
 struct kvmppc_ics *ics;
 int i, icsid;

 icsid = irq >> KVMPPC_XICS_ICS_SHIFT;

 mutex_lock(&kvm->lock);


 if (xics->ics[icsid])
  goto out;


 ics = kzalloc(sizeof(struct kvmppc_ics), GFP_KERNEL);
 if (!ics)
  goto out;

 ics->icsid = icsid;

 for (i = 0; i < KVMPPC_XICS_IRQ_PER_ICS; i++) {
  ics->irq_state[i].number = (icsid << KVMPPC_XICS_ICS_SHIFT) | i;
  ics->irq_state[i].priority = MASKED;
  ics->irq_state[i].saved_priority = MASKED;
 }
 smp_wmb();
 xics->ics[icsid] = ics;

 if (icsid > xics->max_icsid)
  xics->max_icsid = icsid;

 out:
 mutex_unlock(&kvm->lock);
 return xics->ics[icsid];
}
