
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; } ;
struct TYPE_3__ {scalar_t__ use_skf; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int EAGAIN ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,char*) ;
 int kvm_s390_retry_instr (struct kvm_vcpu*) ;
 int kvm_s390_skey_check_enable (struct kvm_vcpu*) ;

__attribute__((used)) static int try_handle_skey(struct kvm_vcpu *vcpu)
{
 int rc;

 rc = kvm_s390_skey_check_enable(vcpu);
 if (rc)
  return rc;
 if (vcpu->kvm->arch.use_skf) {

  kvm_s390_retry_instr(vcpu);
  VCPU_EVENT(vcpu, 4, "%s", "retrying storage key operation");
  return -EAGAIN;
 }
 return 0;
}
