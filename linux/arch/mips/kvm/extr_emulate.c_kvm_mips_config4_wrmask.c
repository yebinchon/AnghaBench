
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int MIPS_CONF4_KSCREXIST_SHIFT ;
 unsigned int MIPS_CONF_M ;

unsigned int kvm_mips_config4_wrmask(struct kvm_vcpu *vcpu)
{

 unsigned int mask = MIPS_CONF_M;


 mask |= 0xfc << MIPS_CONF4_KSCREXIST_SHIFT;

 return mask;
}
