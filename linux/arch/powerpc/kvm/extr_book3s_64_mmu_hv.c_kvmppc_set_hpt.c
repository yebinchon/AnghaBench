
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_hpt_info {int order; int virt; } ;
struct TYPE_2__ {int sdr1; int lpid; struct kvm_hpt_info hpt; int mmio_update; } ;
struct kvm {TYPE_1__ arch; } ;


 int __pa (int ) ;
 int atomic64_set (int *,int ) ;
 int pr_debug (char*,int ,long,int ) ;

void kvmppc_set_hpt(struct kvm *kvm, struct kvm_hpt_info *info)
{
 atomic64_set(&kvm->arch.mmio_update, 0);
 kvm->arch.hpt = *info;
 kvm->arch.sdr1 = __pa(info->virt) | (info->order - 18);

 pr_debug("KVM guest htab at %lx (order %ld), LPID %x\n",
   info->virt, (long)info->order, kvm->arch.lpid);
}
