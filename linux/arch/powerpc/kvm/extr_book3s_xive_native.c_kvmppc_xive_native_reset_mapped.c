
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_xive {int mapping_lock; scalar_t__ mapping; } ;
struct TYPE_2__ {struct kvmppc_xive* xive; } ;
struct kvm {TYPE_1__ arch; } ;
typedef unsigned long long pgoff_t ;


 int EINVAL ;
 unsigned long KVMPPC_XIVE_NR_IRQS ;
 unsigned long long KVM_XIVE_ESB_PAGE_OFFSET ;
 unsigned long long PAGE_SHIFT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,unsigned long) ;
 int unmap_mapping_range (scalar_t__,unsigned long long,unsigned long long,int) ;

__attribute__((used)) static int kvmppc_xive_native_reset_mapped(struct kvm *kvm, unsigned long irq)
{
 struct kvmppc_xive *xive = kvm->arch.xive;
 pgoff_t esb_pgoff = KVM_XIVE_ESB_PAGE_OFFSET + irq * 2;

 if (irq >= KVMPPC_XIVE_NR_IRQS)
  return -EINVAL;






 pr_debug("clearing esb pages for girq 0x%lx\n", irq);
 mutex_lock(&xive->mapping_lock);
 if (xive->mapping)
  unmap_mapping_range(xive->mapping,
        esb_pgoff << PAGE_SHIFT,
        2ull << PAGE_SHIFT, 1);
 mutex_unlock(&xive->mapping_lock);
 return 0;
}
