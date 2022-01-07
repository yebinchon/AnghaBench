
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int vcpu_id; int kvm; } ;


 int CPUSTAT_RUNNING ;
 int SIGP_CC_ORDER_CODE_ACCEPTED ;
 int SIGP_CC_STATUS_STORED ;
 int SIGP_STATUS_INVALID_ORDER ;
 int SIGP_STATUS_NOT_RUNNING ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int ,int) ;
 scalar_t__ kvm_s390_test_cpuflags (struct kvm_vcpu*,int ) ;
 int test_kvm_facility (int ,int) ;

__attribute__((used)) static int __sigp_sense_running(struct kvm_vcpu *vcpu,
    struct kvm_vcpu *dst_vcpu, u64 *reg)
{
 int rc;

 if (!test_kvm_facility(vcpu->kvm, 9)) {
  *reg &= 0xffffffff00000000UL;
  *reg |= SIGP_STATUS_INVALID_ORDER;
  return SIGP_CC_STATUS_STORED;
 }

 if (kvm_s390_test_cpuflags(dst_vcpu, CPUSTAT_RUNNING)) {

  rc = SIGP_CC_ORDER_CODE_ACCEPTED;
 } else {

  *reg &= 0xffffffff00000000UL;
  *reg |= SIGP_STATUS_NOT_RUNNING;
  rc = SIGP_CC_STATUS_STORED;
 }

 VCPU_EVENT(vcpu, 4, "sensed running status of cpu %x rc %x",
     dst_vcpu->vcpu_id, rc);

 return rc;
}
