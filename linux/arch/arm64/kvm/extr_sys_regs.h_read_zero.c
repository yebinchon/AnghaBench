
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {scalar_t__ regval; } ;
struct kvm_vcpu {int dummy; } ;



__attribute__((used)) static inline bool read_zero(struct kvm_vcpu *vcpu,
        struct sys_reg_params *p)
{
 p->regval = 0;
 return 1;
}
