
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvmppc_xics {int dummy; } ;
struct TYPE_2__ {struct kvmppc_xics* xics; } ;
struct kvm {TYPE_1__ arch; } ;


 int ENODEV ;
 int ics_deliver_irq (struct kvmppc_xics*,int ,int) ;

int kvmppc_xics_set_irq(struct kvm *kvm, int irq_source_id, u32 irq, int level,
   bool line_status)
{
 struct kvmppc_xics *xics = kvm->arch.xics;

 if (!xics)
  return -ENODEV;
 return ics_deliver_irq(xics, irq, level);
}
