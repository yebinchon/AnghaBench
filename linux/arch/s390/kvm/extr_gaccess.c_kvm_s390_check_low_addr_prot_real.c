
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ctlreg0 {int lap; int val; } ;
struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int * gcr; } ;


 int GACC_STORE ;
 int PGM_PROTECTION ;
 int PROT_TYPE_LA ;
 int is_low_address (unsigned long) ;
 int trans_exc (struct kvm_vcpu*,int ,unsigned long,int ,int ,int ) ;

int kvm_s390_check_low_addr_prot_real(struct kvm_vcpu *vcpu, unsigned long gra)
{
 union ctlreg0 ctlreg0 = {.val = vcpu->arch.sie_block->gcr[0]};

 if (!ctlreg0.lap || !is_low_address(gra))
  return 0;
 return trans_exc(vcpu, PGM_PROTECTION, gra, 0, GACC_STORE, PROT_TYPE_LA);
}
