
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpa_data {scalar_t__ force_split; } ;
typedef int pte_t ;


 int __should_split_large_page (int *,unsigned long,struct cpa_data*) ;
 int pgd_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int should_split_large_page(pte_t *kpte, unsigned long address,
       struct cpa_data *cpa)
{
 int do_split;

 if (cpa->force_split)
  return 1;

 spin_lock(&pgd_lock);
 do_split = __should_split_large_page(kpte, address, cpa);
 spin_unlock(&pgd_lock);

 return do_split;
}
