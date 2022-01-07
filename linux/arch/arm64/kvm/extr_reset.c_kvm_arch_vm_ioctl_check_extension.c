
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int ARM64_HAS_RAS_EXTN ;
 int cpu_has_32bit_el1 () ;
 int cpus_have_const_cap (int ) ;
 int get_num_brps () ;
 int get_num_wrps () ;
 int has_vhe () ;
 int kvm_arm_support_pmu_v3 () ;
 int kvm_ipa_limit ;
 int system_supports_address_auth () ;
 int system_supports_generic_auth () ;
 int system_supports_sve () ;

int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext)
{
 int r;

 switch (ext) {
 case 138:
  r = cpu_has_32bit_el1();
  break;
 case 131:
  r = get_num_brps();
  break;
 case 130:
  r = get_num_wrps();
  break;
 case 136:
  r = kvm_arm_support_pmu_v3();
  break;
 case 137:
  r = cpus_have_const_cap(ARM64_HAS_RAS_EXTN);
  break;
 case 129:
 case 128:
  r = 1;
  break;
 case 132:
  r = kvm_ipa_limit;
  break;
 case 133:
  r = system_supports_sve();
  break;
 case 135:
 case 134:
  r = has_vhe() && system_supports_address_auth() &&
     system_supports_generic_auth();
  break;
 default:
  r = 0;
 }

 return r;
}
