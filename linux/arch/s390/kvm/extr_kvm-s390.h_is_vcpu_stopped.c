
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int CPUSTAT_STOPPED ;
 int kvm_s390_test_cpuflags (struct kvm_vcpu*,int ) ;

__attribute__((used)) static inline int is_vcpu_stopped(struct kvm_vcpu *vcpu)
{
 return kvm_s390_test_cpuflags(vcpu, CPUSTAT_STOPPED);
}
