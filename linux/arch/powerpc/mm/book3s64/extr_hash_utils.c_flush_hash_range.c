
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppc64_tlb_batch {int ssize; int psize; int * pte; int * vpn; } ;
struct TYPE_2__ {int (* flush_hash_range ) (unsigned long,int) ;} ;


 int flush_hash_page (int ,int ,int ,int ,int) ;
 TYPE_1__ mmu_hash_ops ;
 int ppc64_tlb_batch ;
 int stub1 (unsigned long,int) ;
 struct ppc64_tlb_batch* this_cpu_ptr (int *) ;

void flush_hash_range(unsigned long number, int local)
{
 if (mmu_hash_ops.flush_hash_range)
  mmu_hash_ops.flush_hash_range(number, local);
 else {
  int i;
  struct ppc64_tlb_batch *batch =
   this_cpu_ptr(&ppc64_tlb_batch);

  for (i = 0; i < number; i++)
   flush_hash_page(batch->vpn[i], batch->pte[i],
     batch->psize, batch->ssize, local);
 }
}
