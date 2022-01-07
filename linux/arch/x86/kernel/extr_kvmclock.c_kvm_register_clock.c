
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pvclock_vsyscall_time_info {int pvti; } ;


 int msr_kvm_system_time ;
 int pr_info (char*,int ,int,char*) ;
 int slow_virt_to_phys (int *) ;
 int smp_processor_id () ;
 struct pvclock_vsyscall_time_info* this_cpu_hvclock () ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void kvm_register_clock(char *txt)
{
 struct pvclock_vsyscall_time_info *src = this_cpu_hvclock();
 u64 pa;

 if (!src)
  return;

 pa = slow_virt_to_phys(&src->pvti) | 0x01ULL;
 wrmsrl(msr_kvm_system_time, pa);
 pr_info("kvm-clock: cpu %d, msr %llx, %s", smp_processor_id(), pa, txt);
}
