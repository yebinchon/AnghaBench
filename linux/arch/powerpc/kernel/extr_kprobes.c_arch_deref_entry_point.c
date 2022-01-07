
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kernel_text_address (unsigned long) ;
 unsigned long ppc_global_function_entry (void*) ;

unsigned long arch_deref_entry_point(void *entry)
{





  return (unsigned long)entry;
}
