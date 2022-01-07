
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb_batch {unsigned long tlb_nr; int * vaddrs; } ;


 int __flush_tsb_one_entry (unsigned long,int ,unsigned long,unsigned long) ;

__attribute__((used)) static void __flush_tsb_one(struct tlb_batch *tb, unsigned long hash_shift,
       unsigned long tsb, unsigned long nentries)
{
 unsigned long i;

 for (i = 0; i < tb->tlb_nr; i++)
  __flush_tsb_one_entry(tsb, tb->vaddrs[i], hash_shift, nentries);
}
