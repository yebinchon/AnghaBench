
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int CPUSTAT_IBS ;
 int kvm_s390_test_cpuflags (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool ibs_enabled(struct kvm_vcpu *vcpu)
{
 return kvm_s390_test_cpuflags(vcpu, CPUSTAT_IBS);
}
