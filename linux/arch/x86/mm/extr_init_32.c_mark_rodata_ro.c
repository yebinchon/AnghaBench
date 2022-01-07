
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned long PFN_ALIGN (int ) ;
 int _PAGE_NX ;
 scalar_t__ __end_rodata ;
 int __supported_pte_mask ;
 int _text ;
 int debug_checkwx () ;
 int kernel_set_to_readonly ;
 int mark_nxdata_nx () ;
 int pr_info (char*,...) ;
 int set_pages_ro (int ,unsigned long) ;
 int set_pages_rw (int ,unsigned long) ;
 int virt_to_page (unsigned long) ;

void mark_rodata_ro(void)
{
 unsigned long start = PFN_ALIGN(_text);
 unsigned long size = (unsigned long)__end_rodata - start;

 set_pages_ro(virt_to_page(start), size >> PAGE_SHIFT);
 pr_info("Write protecting kernel text and read-only data: %luk\n",
  size >> 10);

 kernel_set_to_readonly = 1;
 mark_nxdata_nx();
 if (__supported_pte_mask & _PAGE_NX)
  debug_checkwx();
}
