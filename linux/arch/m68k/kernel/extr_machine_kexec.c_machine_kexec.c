
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int head; int start; int control_code_page; } ;
typedef int (* relocate_kernel_t ) (int,int ,unsigned long) ;


 int PAGE_MASK ;
 int __flush_cache_all () ;
 int local_irq_disable () ;
 int m68k_cputype ;
 int m68k_mmutype ;
 int memcpy (void*,int ,int ) ;
 void* page_address (int ) ;
 int pr_info (char*,int ) ;
 int relocate_new_kernel ;
 int relocate_new_kernel_size ;
 int stub1 (int,int ,unsigned long) ;

void machine_kexec(struct kimage *image)
{
 void *reboot_code_buffer;
 unsigned long cpu_mmu_flags;

 reboot_code_buffer = page_address(image->control_code_page);

 memcpy(reboot_code_buffer, relocate_new_kernel,
        relocate_new_kernel_size);




 local_irq_disable();

 pr_info("Will call new kernel at 0x%08lx. Bye...\n", image->start);
 __flush_cache_all();
 cpu_mmu_flags = m68k_cputype | m68k_mmutype << 8;
 ((relocate_kernel_t) reboot_code_buffer)(image->head & PAGE_MASK,
       image->start,
       cpu_mmu_flags);
}
