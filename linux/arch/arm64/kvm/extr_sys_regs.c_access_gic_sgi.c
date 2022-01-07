
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int Op1; int Op2; int regval; scalar_t__ is_aarch32; int is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int read_from_write_only (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ;
 int vgic_v3_dispatch_sgi (struct kvm_vcpu*,int ,int) ;

__attribute__((used)) static bool access_gic_sgi(struct kvm_vcpu *vcpu,
      struct sys_reg_params *p,
      const struct sys_reg_desc *r)
{
 bool g1;

 if (!p->is_write)
  return read_from_write_only(vcpu, p, r);
 if (p->is_aarch32) {
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
 } else {
  switch (p->Op2) {
  default:
  case 5:
   g1 = 1;
   break;
  case 6:
  case 7:
   g1 = 0;
   break;
  }
 }

 vgic_v3_dispatch_sgi(vcpu, p->regval, g1);

 return 1;
}
