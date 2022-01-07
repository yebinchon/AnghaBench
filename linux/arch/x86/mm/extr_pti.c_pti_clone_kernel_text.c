
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned long PFN_ALIGN (unsigned long) ;
 int PTI_LEVEL_KERNEL_IMAGE ;
 scalar_t__ __end_rodata_aligned ;
 scalar_t__ __stop___ex_table ;
 unsigned long _text ;
 int pr_debug (char*) ;
 int pti_clone_pgtable (unsigned long,unsigned long,int ) ;
 int pti_kernel_image_global_ok () ;
 int set_memory_global (unsigned long,unsigned long) ;

__attribute__((used)) static void pti_clone_kernel_text(void)
{





 unsigned long start = PFN_ALIGN(_text);
 unsigned long end_clone = (unsigned long)__end_rodata_aligned;
 unsigned long end_global = PFN_ALIGN((unsigned long)__stop___ex_table);

 if (!pti_kernel_image_global_ok())
  return;

 pr_debug("mapping partial kernel image into user address space\n");






 pti_clone_pgtable(start, end_clone, PTI_LEVEL_KERNEL_IMAGE);
 set_memory_global(start, (end_global - start) >> PAGE_SHIFT);
}
