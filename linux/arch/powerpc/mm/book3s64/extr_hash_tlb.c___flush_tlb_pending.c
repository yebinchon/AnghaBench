
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc64_tlb_batch {int index; int ssize; int psize; int * pte; int * vpn; int mm; } ;


 int flush_hash_page (int ,int ,int ,int ,int) ;
 int flush_hash_range (int,int) ;
 int mm_is_thread_local (int ) ;

void __flush_tlb_pending(struct ppc64_tlb_batch *batch)
{
 int i, local;

 i = batch->index;
 local = mm_is_thread_local(batch->mm);
 if (i == 1)
  flush_hash_page(batch->vpn[0], batch->pte[0],
    batch->psize, batch->ssize, local);
 else
  flush_hash_range(i, local);
 batch->index = 0;
}
