
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int set_memory_decrypted (unsigned long,unsigned int) ;
 scalar_t__ sev_active () ;

int arch_kexec_post_alloc_pages(void *vaddr, unsigned int pages, gfp_t gfp)
{
 if (sev_active())
  return 0;






 return set_memory_decrypted((unsigned long)vaddr, pages);
}
