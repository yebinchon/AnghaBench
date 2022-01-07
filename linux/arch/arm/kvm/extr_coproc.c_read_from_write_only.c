
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct coproc_params {int dummy; } ;


 int WARN_ONCE (int,char*) ;
 int kvm_inject_undefined (struct kvm_vcpu*) ;
 int print_cp_instr (struct coproc_params const*) ;

__attribute__((used)) static bool read_from_write_only(struct kvm_vcpu *vcpu,
     const struct coproc_params *params)
{
 WARN_ONCE(1, "CP15 read to write-only register\n");
 print_cp_instr(params);
 kvm_inject_undefined(vcpu);
 return 0;
}
