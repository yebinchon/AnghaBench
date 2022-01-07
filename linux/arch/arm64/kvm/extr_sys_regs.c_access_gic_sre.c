
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sys_reg_params {int regval; scalar_t__ is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct TYPE_4__ {int vgic_sre; } ;
struct TYPE_5__ {TYPE_1__ vgic_v3; } ;
struct TYPE_6__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;


 int ignore_write (struct kvm_vcpu*,struct sys_reg_params*) ;

__attribute__((used)) static bool access_gic_sre(struct kvm_vcpu *vcpu,
      struct sys_reg_params *p,
      const struct sys_reg_desc *r)
{
 if (p->is_write)
  return ignore_write(vcpu, p);

 p->regval = vcpu->arch.vgic_cpu.vgic_v3.vgic_sre;
 return 1;
}
