
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 unsigned long __phys_to_pfn (unsigned long) ;
 unsigned long virt_to_phys (int *) ;

__attribute__((used)) static unsigned long get_arch_pgd(pgd_t *pgd)
{



 return virt_to_phys(pgd);

}
