
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int shadow_msrp; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BUG_ON (int) ;
 int MSRP_DEP ;
 int MSRP_PMMP ;
 int MSRP_UCLEP ;
 int MSR_DE ;
 int MSR_PMM ;
 int MSR_UCLE ;

void kvm_guest_protect_msr(struct kvm_vcpu *vcpu, ulong prot_bitmap, bool set)
{
}
