
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nip; } ;
struct TYPE_6__ {TYPE_1__ regs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_8__ {int status; int address; } ;
struct TYPE_7__ {TYPE_4__ arch; } ;
struct kvm_run {TYPE_3__ debug; int exit_reason; } ;


 int DEBUG_EXITS ;

 int EMULATE_DONE ;
 int EMULATE_EXIT_USER ;
 int EMULATE_FAIL ;
 int KVM_EXIT_DEBUG ;
 int get_oc (unsigned int) ;
 int kvmppc_account_exit (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int kvmppc_e500_emul_ehpriv(struct kvm_run *run, struct kvm_vcpu *vcpu,
       unsigned int inst, int *advance)
{
 int emulated = EMULATE_DONE;

 switch (get_oc(inst)) {
 case 128:
  run->exit_reason = KVM_EXIT_DEBUG;
  run->debug.arch.address = vcpu->arch.regs.nip;
  run->debug.arch.status = 0;
  kvmppc_account_exit(vcpu, DEBUG_EXITS);
  emulated = EMULATE_EXIT_USER;
  *advance = 0;
  break;
 default:
  emulated = EMULATE_FAIL;
 }
 return emulated;
}
