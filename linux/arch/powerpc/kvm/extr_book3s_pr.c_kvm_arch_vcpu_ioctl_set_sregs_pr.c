
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct kvmppc_vcpu_book3s {int * dbat; int * ibat; int sdr1; } ;
struct TYPE_10__ {int (* mtsrin ) (struct kvm_vcpu*,int,int ) ;int (* slbmte ) (struct kvm_vcpu*,int,int) ;int (* slbia ) (struct kvm_vcpu*) ;} ;
struct TYPE_11__ {int hflags; TYPE_3__ mmu; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_12__ {int* ibat; int* dbat; int * sr; } ;
struct TYPE_9__ {TYPE_1__* slb; } ;
struct TYPE_13__ {TYPE_5__ ppc32; TYPE_2__ ppc64; int sdr1; } ;
struct TYPE_14__ {TYPE_6__ s; } ;
struct kvm_sregs {TYPE_7__ u; int pvr; } ;
struct TYPE_8__ {int slbe; int slbv; } ;


 int BOOK3S_HFLAG_SLB ;
 int SLB_ESID_V ;
 int kvmppc_mmu_pte_flush (struct kvm_vcpu*,int ,int ) ;
 int kvmppc_set_bat (struct kvm_vcpu*,int *,int,int ) ;
 int kvmppc_set_pvr_pr (struct kvm_vcpu*,int ) ;
 int stub1 (struct kvm_vcpu*,int,int) ;
 int stub2 (struct kvm_vcpu*) ;
 int stub3 (struct kvm_vcpu*,int,int) ;
 int stub4 (struct kvm_vcpu*,int,int ) ;
 struct kvmppc_vcpu_book3s* to_book3s (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_arch_vcpu_ioctl_set_sregs_pr(struct kvm_vcpu *vcpu,
         struct kvm_sregs *sregs)
{
 struct kvmppc_vcpu_book3s *vcpu3s = to_book3s(vcpu);
 int i;

 kvmppc_set_pvr_pr(vcpu, sregs->pvr);

 vcpu3s->sdr1 = sregs->u.s.sdr1;
 {
  for (i = 0; i < 16; i++) {
   vcpu->arch.mmu.mtsrin(vcpu, i, sregs->u.s.ppc32.sr[i]);
  }
  for (i = 0; i < 8; i++) {
   kvmppc_set_bat(vcpu, &(vcpu3s->ibat[i]), 0,
           (u32)sregs->u.s.ppc32.ibat[i]);
   kvmppc_set_bat(vcpu, &(vcpu3s->ibat[i]), 1,
           (u32)(sregs->u.s.ppc32.ibat[i] >> 32));
   kvmppc_set_bat(vcpu, &(vcpu3s->dbat[i]), 0,
           (u32)sregs->u.s.ppc32.dbat[i]);
   kvmppc_set_bat(vcpu, &(vcpu3s->dbat[i]), 1,
           (u32)(sregs->u.s.ppc32.dbat[i] >> 32));
  }
 }


 kvmppc_mmu_pte_flush(vcpu, 0, 0);

 return 0;
}
