
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mips_callbacks {int dummy; } ;


 int ENODEV ;
 scalar_t__ WARN (int,char*) ;
 int cpu_has_vz ;
 struct kvm_mips_callbacks kvm_vz_callbacks ;
 int pgd_reg ;
 int pr_info (char*) ;

int kvm_mips_emulation_init(struct kvm_mips_callbacks **install_callbacks)
{
 if (!cpu_has_vz)
  return -ENODEV;





 if (WARN(pgd_reg == -1,
   "pgd_reg not allocated even though cpu_has_vz\n"))
  return -ENODEV;

 pr_info("Starting KVM with MIPS VZ extensions\n");

 *install_callbacks = &kvm_vz_callbacks;
 return 0;
}
