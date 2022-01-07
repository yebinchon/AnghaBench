
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
 int set_memory_ro (unsigned long,unsigned long) ;

void set_kernel_text_ro(void)
{
 unsigned long start = PFN_ALIGN(_text);
 unsigned long end = PFN_ALIGN(__stop___ex_table);

 if (!kernel_set_to_readonly)
  return;

 pr_debug("Set kernel text: %lx - %lx for read only\n",
   start, end);




 set_memory_ro(start, (end - start) >> PAGE_SHIFT);
}
