
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_hw_bp; struct kvm_hw_bp_info_arch* hw_bp_info; } ;
struct TYPE_3__ {TYPE_2__ guestdbg; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_hw_bp_info_arch {unsigned long addr; scalar_t__ len; } ;


 int end_of_range (struct kvm_hw_bp_info_arch*) ;
 scalar_t__ in_addr_range (unsigned long,unsigned long,int ) ;

__attribute__((used)) static struct kvm_hw_bp_info_arch *find_hw_bp(struct kvm_vcpu *vcpu,
           unsigned long addr)
{
 struct kvm_hw_bp_info_arch *bp_info = vcpu->arch.guestdbg.hw_bp_info;
 int i;

 if (vcpu->arch.guestdbg.nr_hw_bp == 0)
  return ((void*)0);

 for (i = 0; i < vcpu->arch.guestdbg.nr_hw_bp; i++) {

  if (addr == bp_info->addr)
   goto found;
  if (bp_info->len > 0 &&
      in_addr_range(addr, bp_info->addr, end_of_range(bp_info)))
   goto found;

  bp_info++;
 }

 return ((void*)0);
found:
 return bp_info;
}
