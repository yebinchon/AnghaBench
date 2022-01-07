
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct coproc_reg {int dummy; } ;
struct coproc_params {scalar_t__ is_write; } ;


 int read_zero (struct kvm_vcpu*,struct coproc_params const*) ;
 int write_to_read_only (struct kvm_vcpu*,struct coproc_params const*) ;

__attribute__((used)) static bool access_cbar(struct kvm_vcpu *vcpu,
   const struct coproc_params *p,
   const struct coproc_reg *r)
{
 if (p->is_write)
  return write_to_read_only(vcpu, p);
 return read_zero(vcpu, p);
}
