
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgic_v3_cpu_if {int vgic_sre; } ;
struct sys_reg_params {int regval; scalar_t__ is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct TYPE_3__ {struct vgic_v3_cpu_if vgic_v3; } ;
struct TYPE_4__ {TYPE_1__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int ICC_SRE_EL1_SRE ;

__attribute__((used)) static bool access_gic_sre(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
      const struct sys_reg_desc *r)
{
 struct vgic_v3_cpu_if *vgicv3 = &vcpu->arch.vgic_cpu.vgic_v3;


 if (p->is_write) {
  if (!(p->regval & ICC_SRE_EL1_SRE))
   return 0;
 } else {
  p->regval = vgicv3->vgic_sre;
 }

 return 1;
}
