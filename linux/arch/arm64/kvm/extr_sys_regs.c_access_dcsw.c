
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int ARM64_HAS_STAGE2_FWB ;
 int cpus_have_const_cap (int ) ;
 int kvm_set_way_flush (struct kvm_vcpu*) ;
 int read_from_write_only (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ;

__attribute__((used)) static bool access_dcsw(struct kvm_vcpu *vcpu,
   struct sys_reg_params *p,
   const struct sys_reg_desc *r)
{
 if (!p->is_write)
  return read_from_write_only(vcpu, p, r);
 if (!cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
  kvm_set_way_flush(vcpu);

 return 1;
}
