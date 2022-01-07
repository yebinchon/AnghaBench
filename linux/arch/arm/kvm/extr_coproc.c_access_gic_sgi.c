
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct coproc_reg {int dummy; } ;
struct coproc_params {int Op1; int Rt1; int Rt2; int is_write; } ;


 int read_from_write_only (struct kvm_vcpu*,struct coproc_params const*) ;
 int* vcpu_reg (struct kvm_vcpu*,int ) ;
 int vgic_v3_dispatch_sgi (struct kvm_vcpu*,int,int) ;

__attribute__((used)) static bool access_gic_sgi(struct kvm_vcpu *vcpu,
      const struct coproc_params *p,
      const struct coproc_reg *r)
{
 u64 reg;
 bool g1;

 if (!p->is_write)
  return read_from_write_only(vcpu, p);

 reg = (u64)*vcpu_reg(vcpu, p->Rt2) << 32;
 reg |= *vcpu_reg(vcpu, p->Rt1) ;
 switch (p->Op1) {
 default:
 case 0:
  g1 = 1;
  break;
 case 1:
 case 2:
  g1 = 0;
  break;
 }

 vgic_v3_dispatch_sgi(vcpu, reg, g1);

 return 1;
}
