
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TLB_DUP_ERR ;
 unsigned int TLB_LKUP_ERR ;
 int WARN (int,char*,unsigned int) ;
 int __tlb_entry_erase () ;
 scalar_t__ likely (int) ;
 unsigned int tlb_entry_lkup (unsigned int) ;

__attribute__((used)) static void tlb_entry_erase(unsigned int vaddr_n_asid)
{
 unsigned int idx;


 idx = tlb_entry_lkup(vaddr_n_asid);


 if (likely(!(idx & TLB_LKUP_ERR))) {
  __tlb_entry_erase();
 } else {

  WARN(idx == TLB_DUP_ERR, "Probe returned Dup PD for %x\n",
        vaddr_n_asid);
 }
}
