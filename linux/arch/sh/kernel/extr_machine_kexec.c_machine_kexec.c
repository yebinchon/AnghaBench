
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {unsigned long head; unsigned long start; scalar_t__ preserve_context; int control_code_page; } ;
typedef int (* relocate_new_kernel_t ) (unsigned long,unsigned long,unsigned long) ;


 unsigned long IND_DESTINATION ;
 unsigned long IND_DONE ;
 unsigned long IND_INDIRECTION ;
 unsigned long IND_SOURCE ;
 unsigned long PAGE_MASK ;
 int __ftrace_enabled_restore (int) ;
 int __ftrace_enabled_save () ;
 int flush_cache_all () ;
 int kexec_info (struct kimage*) ;
 int local_irq_disable () ;
 int memcpy (void*,int ,int ) ;
 scalar_t__ page_address (int ) ;
 unsigned long* phys_to_virt (unsigned long) ;
 int relocate_new_kernel ;
 int relocate_new_kernel_size ;
 int restore_processor_state () ;
 int save_processor_state () ;
 int sh_bios_vbr_reload () ;
 int stub1 (unsigned long,unsigned long,unsigned long) ;
 unsigned long virt_to_phys (unsigned long) ;

void machine_kexec(struct kimage *image)
{
 unsigned long page_list;
 unsigned long reboot_code_buffer;
 relocate_new_kernel_t rnk;
 unsigned long entry;
 unsigned long *ptr;
 int save_ftrace_enabled;






 for (ptr = &image->head; (entry = *ptr) && !(entry & IND_DONE);
      ptr = (entry & IND_INDIRECTION) ?
        phys_to_virt(entry & PAGE_MASK) : ptr + 1) {
  if (*ptr & IND_SOURCE || *ptr & IND_INDIRECTION ||
      *ptr & IND_DESTINATION)
   *ptr = (unsigned long) phys_to_virt(*ptr);
 }






 save_ftrace_enabled = __ftrace_enabled_save();


 local_irq_disable();

 page_list = image->head;


 reboot_code_buffer =
   (unsigned long)page_address(image->control_code_page);


 memcpy((void *)reboot_code_buffer, relocate_new_kernel,
      relocate_new_kernel_size);

 kexec_info(image);
 flush_cache_all();

 sh_bios_vbr_reload();


 rnk = (relocate_new_kernel_t) reboot_code_buffer;
 (*rnk)(page_list, reboot_code_buffer,
        (unsigned long)phys_to_virt(image->start));
 __ftrace_enabled_restore(save_ftrace_enabled);
}
