
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int set_intercept_indicators_ext (struct kvm_vcpu*) ;
 int set_intercept_indicators_io (struct kvm_vcpu*) ;
 int set_intercept_indicators_mchk (struct kvm_vcpu*) ;
 int set_intercept_indicators_stop (struct kvm_vcpu*) ;

__attribute__((used)) static void set_intercept_indicators(struct kvm_vcpu *vcpu)
{
 set_intercept_indicators_io(vcpu);
 set_intercept_indicators_ext(vcpu);
 set_intercept_indicators_mchk(vcpu);
 set_intercept_indicators_stop(vcpu);
}
