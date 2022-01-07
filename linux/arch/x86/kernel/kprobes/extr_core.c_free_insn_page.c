
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int module_memfree (void*) ;

void free_insn_page(void *page)
{
 module_memfree(page);
}
