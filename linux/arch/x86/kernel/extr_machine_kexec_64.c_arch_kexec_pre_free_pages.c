
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_memory_encrypted (unsigned long,unsigned int) ;
 scalar_t__ sev_active () ;

void arch_kexec_pre_free_pages(void *vaddr, unsigned int pages)
{
 if (sev_active())
  return;





 set_memory_encrypted((unsigned long)vaddr, pages);
}
