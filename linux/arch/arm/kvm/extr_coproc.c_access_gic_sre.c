
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vgic_sre; } ;
struct TYPE_5__ {TYPE_1__ vgic_v3; } ;
struct TYPE_6__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct coproc_reg {int dummy; } ;
struct coproc_params {int Rt1; scalar_t__ is_write; } ;


 int ignore_write (struct kvm_vcpu*,struct coproc_params const*) ;
 int * vcpu_reg (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool access_gic_sre(struct kvm_vcpu *vcpu,
      const struct coproc_params *p,
      const struct coproc_reg *r)
{
 if (p->is_write)
  return ignore_write(vcpu, p);

 *vcpu_reg(vcpu, p->Rt1) = vcpu->arch.vgic_cpu.vgic_v3.vgic_sre;

 return 1;
}
