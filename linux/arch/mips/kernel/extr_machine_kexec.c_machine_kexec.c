
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {unsigned long start; scalar_t__ type; unsigned long head; int control_code_page; } ;


 unsigned long IND_DESTINATION ;
 unsigned long IND_DONE ;
 unsigned long IND_INDIRECTION ;
 unsigned long IND_SOURCE ;
 scalar_t__ KEXEC_TYPE_DEFAULT ;
 unsigned long PAGE_MASK ;
 int __flush_cache_all () ;
 int atomic_set (int *,int) ;
 unsigned long kexec_indirection_page ;
 int kexec_ready_to_reboot ;
 int kexec_reboot () ;
 scalar_t__ kexec_smp_wait ;
 unsigned long kexec_start_address ;
 int local_irq_disable () ;
 int memcpy (void*,scalar_t__,int ) ;
 scalar_t__ page_address (int ) ;
 unsigned long* phys_to_virt (unsigned long) ;
 int printk (char*,...) ;
 long reboot_code_buffer ;
 scalar_t__ relocate_new_kernel ;
 int relocate_new_kernel_size ;
 void* relocated_kexec_smp_wait ;
 int set_cpu_online (int ,int) ;
 int smp_processor_id () ;
 int smp_wmb () ;

void
machine_kexec(struct kimage *image)
{
 unsigned long entry;
 unsigned long *ptr;

 reboot_code_buffer =
   (unsigned long)page_address(image->control_code_page);

 kexec_start_address =
  (unsigned long) phys_to_virt(image->start);

 if (image->type == KEXEC_TYPE_DEFAULT) {
  kexec_indirection_page =
   (unsigned long) phys_to_virt(image->head & PAGE_MASK);
 } else {
  kexec_indirection_page = (unsigned long)&image->head;
 }

 memcpy((void*)reboot_code_buffer, relocate_new_kernel,
        relocate_new_kernel_size);







 for (ptr = &image->head; (entry = *ptr) && !(entry &IND_DONE);
      ptr = (entry & IND_INDIRECTION) ?
        phys_to_virt(entry & PAGE_MASK) : ptr + 1) {
  if (*ptr & IND_SOURCE || *ptr & IND_INDIRECTION ||
      *ptr & IND_DESTINATION)
   *ptr = (unsigned long) phys_to_virt(*ptr);
 }


 set_cpu_online(smp_processor_id(), 0);




 local_irq_disable();

 printk("Will call new kernel at %08lx\n", image->start);
 printk("Bye ...\n");

 __flush_cache_all();







 kexec_reboot();
}
