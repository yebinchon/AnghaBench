
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int PT32E_ROOT_LEVEL ;
 int PT64_ROOT_4LEVEL ;

__attribute__((used)) static int get_npt_level(struct kvm_vcpu *vcpu)
{



 return PT32E_ROOT_LEVEL;

}
