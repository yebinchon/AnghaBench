
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SVE_VL_ARCH_MAX ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ kvm_sve_max_vl ;
 int pr_warn (char*,scalar_t__) ;
 scalar_t__ sve_max_virtualisable_vl ;
 scalar_t__ sve_max_vl ;
 scalar_t__ system_supports_sve () ;

int kvm_arm_init_sve(void)
{
 if (system_supports_sve()) {
  kvm_sve_max_vl = sve_max_virtualisable_vl;







  if (WARN_ON(kvm_sve_max_vl > SVE_VL_ARCH_MAX))
   kvm_sve_max_vl = SVE_VL_ARCH_MAX;





  if (kvm_sve_max_vl < sve_max_vl)
   pr_warn("KVM: SVE vector length for guests limited to %u bytes\n",
    kvm_sve_max_vl);
 }

 return 0;
}
