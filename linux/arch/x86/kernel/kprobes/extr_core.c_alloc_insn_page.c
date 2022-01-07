
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 void* module_alloc (int ) ;
 int set_memory_ro (unsigned long,int) ;
 int set_memory_x (unsigned long,int) ;
 int set_vm_flush_reset_perms (void*) ;

void *alloc_insn_page(void)
{
 void *page;

 page = module_alloc(PAGE_SIZE);
 if (!page)
  return ((void*)0);

 set_vm_flush_reset_perms(page);




 set_memory_ro((unsigned long)page, 1);





 set_memory_x((unsigned long)page, 1);

 return page;
}
