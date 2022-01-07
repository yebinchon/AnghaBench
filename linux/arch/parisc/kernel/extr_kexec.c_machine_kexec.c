
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kimage_arch {unsigned long cmdline; unsigned long initrd_start; unsigned long initrd_end; } ;
struct kimage {unsigned long head; unsigned long start; struct kimage_arch arch; int control_code_page; } ;
struct TYPE_4__ {unsigned long mem_free; } ;
struct TYPE_3__ {long long addr; } ;
typedef TYPE_1__ Elf64_Fdesc ;


 int FIX_TEXT_KEXEC ;
 TYPE_2__* PAGE0 ;
 unsigned long PAGE_MASK ;
 scalar_t__ __fix_to_virt (int ) ;
 int dereference_function_descriptor (int ) ;
 int flush_cache_all () ;
 int flush_tlb_all () ;
 int kexec_cmdline_offset ;
 int kexec_free_mem_offset ;
 int kexec_initrd_end_offset ;
 int kexec_initrd_start_offset ;
 int local_irq_disable () ;
 int memcpy (void*,int ,int ) ;
 unsigned long page_to_phys (int ) ;
 int relocate_new_kernel ;
 int relocate_new_kernel_size ;
 int set_fixmap (int ,unsigned long) ;

void machine_kexec(struct kimage *image)
{



 void (*reloc)(unsigned long head,
        unsigned long start,
        unsigned long phys);

 unsigned long phys = page_to_phys(image->control_code_page);
 void *virt = (void *)__fix_to_virt(FIX_TEXT_KEXEC);
 struct kimage_arch *arch = &image->arch;

 set_fixmap(FIX_TEXT_KEXEC, phys);

 flush_cache_all();





 reloc = (void *)virt;


 memcpy(virt, dereference_function_descriptor(relocate_new_kernel),
  relocate_new_kernel_size);

 *(unsigned long *)(virt + kexec_cmdline_offset) = arch->cmdline;
 *(unsigned long *)(virt + kexec_initrd_start_offset) = arch->initrd_start;
 *(unsigned long *)(virt + kexec_initrd_end_offset) = arch->initrd_end;
 *(unsigned long *)(virt + kexec_free_mem_offset) = PAGE0->mem_free;

 flush_cache_all();
 flush_tlb_all();
 local_irq_disable();

 reloc(image->head & PAGE_MASK, image->start, phys);
}
