
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned long PFN_ALIGN (int ) ;
 int __stop___ex_table ;
 int _text ;
 int kernel_set_to_readonly ;
 int pr_debug (char*,unsigned long,unsigned long) ;
 int set_memory_rw (unsigned long,unsigned long) ;

void set_kernel_text_rw(void)
{
 unsigned long start = PFN_ALIGN(_text);
 unsigned long end = PFN_ALIGN(__stop___ex_table);

 if (!kernel_set_to_readonly)
  return;

 pr_debug("Set kernel text: %lx - %lx for read write\n",
   start, end);






 set_memory_rw(start, (end - start) >> PAGE_SHIFT);
}
