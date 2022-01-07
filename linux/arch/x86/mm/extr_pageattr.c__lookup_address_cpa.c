
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpa_data {scalar_t__ pgd; } ;
typedef int pte_t ;


 int * lookup_address (unsigned long,unsigned int*) ;
 int * lookup_address_in_pgd (scalar_t__,unsigned long,unsigned int*) ;
 scalar_t__ pgd_index (unsigned long) ;

__attribute__((used)) static pte_t *_lookup_address_cpa(struct cpa_data *cpa, unsigned long address,
      unsigned int *level)
{
 if (cpa->pgd)
  return lookup_address_in_pgd(cpa->pgd + pgd_index(address),
            address, level);

 return lookup_address(address, level);
}
