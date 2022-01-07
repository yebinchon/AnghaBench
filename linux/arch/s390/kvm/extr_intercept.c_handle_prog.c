
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* sie_block; } ;
struct TYPE_4__ {int exit_program_interruption; } ;
struct kvm_vcpu {TYPE_2__ arch; TYPE_1__ stat; } ;
typedef int psw_t ;
struct TYPE_6__ {scalar_t__ iprcc; } ;


 int EOPNOTSUPP ;
 scalar_t__ PGM_SPECIFICATION ;
 int __LC_PGM_NEW_PSW ;
 scalar_t__ guestdbg_enabled (struct kvm_vcpu*) ;
 int handle_itdb (struct kvm_vcpu*) ;
 int inject_prog_on_prog_intercept (struct kvm_vcpu*) ;
 int is_valid_psw (int *) ;
 int kvm_s390_handle_per_event (struct kvm_vcpu*) ;
 scalar_t__ per_event (struct kvm_vcpu*) ;
 int read_guest_lc (struct kvm_vcpu*,int ,int *,int) ;
 int trace_kvm_s390_intercept_prog (struct kvm_vcpu*,scalar_t__) ;

__attribute__((used)) static int handle_prog(struct kvm_vcpu *vcpu)
{
 psw_t psw;
 int rc;

 vcpu->stat.exit_program_interruption++;

 if (guestdbg_enabled(vcpu) && per_event(vcpu)) {
  rc = kvm_s390_handle_per_event(vcpu);
  if (rc)
   return rc;

  if (vcpu->arch.sie_block->iprcc == 0)
   return 0;
 }

 trace_kvm_s390_intercept_prog(vcpu, vcpu->arch.sie_block->iprcc);
 if (vcpu->arch.sie_block->iprcc == PGM_SPECIFICATION) {
  rc = read_guest_lc(vcpu, __LC_PGM_NEW_PSW, &psw, sizeof(psw_t));
  if (rc)
   return rc;

  if (!is_valid_psw(&psw))
   return -EOPNOTSUPP;
 }
 rc = handle_itdb(vcpu);
 if (rc)
  return rc;

 return inject_prog_on_prog_intercept(vcpu);
}
