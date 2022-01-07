
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct kvmppc_pte {int eaddr; int raddr; int vpage; int may_read; int may_write; int may_execute; } ;
struct TYPE_3__ {int (* xlate ) (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int) ;} ;
struct TYPE_4__ {int hflags; TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef enum xlate_readwrite { ____Placeholder_xlate_readwrite } xlate_readwrite ;
typedef enum xlate_instdata { ____Placeholder_xlate_instdata } xlate_instdata ;


 int BOOK3S_HFLAG_SPLIT_HACK ;
 int KVM_PAM ;
 int MSR_DR ;
 int MSR_IR ;
 int SPLIT_HACK_MASK ;
 int SPLIT_HACK_OFFS ;
 int VSID_REAL ;
 int XLATE_DATA ;
 int XLATE_WRITE ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int) ;

int kvmppc_xlate(struct kvm_vcpu *vcpu, ulong eaddr, enum xlate_instdata xlid,
   enum xlate_readwrite xlrw, struct kvmppc_pte *pte)
{
 bool data = (xlid == XLATE_DATA);
 bool iswrite = (xlrw == XLATE_WRITE);
 int relocated = (kvmppc_get_msr(vcpu) & (data ? MSR_DR : MSR_IR));
 int r;

 if (relocated) {
  r = vcpu->arch.mmu.xlate(vcpu, eaddr, pte, data, iswrite);
 } else {
  pte->eaddr = eaddr;
  pte->raddr = eaddr & KVM_PAM;
  pte->vpage = VSID_REAL | eaddr >> 12;
  pte->may_read = 1;
  pte->may_write = 1;
  pte->may_execute = 1;
  r = 0;

  if ((kvmppc_get_msr(vcpu) & (MSR_IR | MSR_DR)) == MSR_DR &&
      !data) {
   if ((vcpu->arch.hflags & BOOK3S_HFLAG_SPLIT_HACK) &&
       ((eaddr & SPLIT_HACK_MASK) == SPLIT_HACK_OFFS))
   pte->raddr &= ~SPLIT_HACK_MASK;
  }
 }

 return r;
}
