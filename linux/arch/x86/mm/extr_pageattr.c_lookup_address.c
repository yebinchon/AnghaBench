
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int * lookup_address_in_pgd (int ,unsigned long,unsigned int*) ;
 int pgd_offset_k (unsigned long) ;

pte_t *lookup_address(unsigned long address, unsigned int *level)
{
 return lookup_address_in_pgd(pgd_offset_k(address), address, level);
}
