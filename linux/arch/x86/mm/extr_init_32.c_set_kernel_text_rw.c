
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned long PFN_ALIGN (int ) ;
 int _etext ;
 int _text ;
 int kernel_set_to_readonly ;
 int pr_debug (char*,unsigned long,unsigned long) ;
 int set_pages_rw (int ,unsigned long) ;
 int virt_to_page (unsigned long) ;

void set_kernel_text_rw(void)
{
 unsigned long start = PFN_ALIGN(_text);
 unsigned long size = PFN_ALIGN(_etext) - start;

 if (!kernel_set_to_readonly)
  return;

 pr_debug("Set kernel text: %lx - %lx for read write\n",
   start, start+size);

 set_pages_rw(virt_to_page(start), size >> PAGE_SHIFT);
}
