
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vmcore_info; } ;


 int NR_CPUS ;
 TYPE_1__ S390_lowcore ;
 int VMCOREINFO_LENGTH (int ,int ) ;
 int VMCOREINFO_SYMBOL (int ) ;
 int __edma ;
 int __sdma ;
 int high_memory ;
 int kaslr_offset () ;
 int lowcore_ptr ;
 int mem_assign_absolute (int ,int ) ;
 int paddr_vmcoreinfo_note () ;
 int vmcoreinfo_append_str (char*,int ) ;

void arch_crash_save_vmcoreinfo(void)
{
 VMCOREINFO_SYMBOL(lowcore_ptr);
 VMCOREINFO_SYMBOL(high_memory);
 VMCOREINFO_LENGTH(lowcore_ptr, NR_CPUS);
 mem_assign_absolute(S390_lowcore.vmcore_info, paddr_vmcoreinfo_note());
 vmcoreinfo_append_str("SDMA=%lx\n", __sdma);
 vmcoreinfo_append_str("EDMA=%lx\n", __edma);
 vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
}
