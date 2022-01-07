
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int dummy; } ;


 int Hash ;
 int _tlbia () ;

void tlb_flush(struct mmu_gather *tlb)
{
 if (!Hash) {




  _tlbia();
 }
}
