
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long KSEG0 ;
 unsigned long PAGE_MASK ;
 unsigned long R3K_ENTRYLO_D ;
 unsigned long R3K_ENTRYLO_G ;
 unsigned long R3K_ENTRYLO_N ;
 unsigned long R3K_ENTRYLO_V ;
 unsigned long cpu_asid_mask (int *) ;
 int current_cpu_data ;
 int pr_cont (char*,unsigned long,unsigned long,unsigned long,int,int,int,int) ;
 int printk (char*,...) ;
 unsigned long read_c0_entryhi () ;
 unsigned long read_c0_entrylo0 () ;
 int write_c0_entryhi (unsigned int) ;
 int write_c0_index (int) ;

__attribute__((used)) static void dump_tlb(int first, int last)
{
 int i;
 unsigned int asid;
 unsigned long entryhi, entrylo0, asid_mask;

 asid_mask = cpu_asid_mask(&current_cpu_data);
 asid = read_c0_entryhi() & asid_mask;

 for (i = first; i <= last; i++) {
  write_c0_index(i<<8);
  __asm__ __volatile__(
   ".set\tnoreorder\n\t"
   "tlbr\n\t"
   "nop\n\t"
   ".set\treorder");
  entryhi = read_c0_entryhi();
  entrylo0 = read_c0_entrylo0();


  if ((entryhi & PAGE_MASK) != KSEG0 &&
      (entrylo0 & R3K_ENTRYLO_G ||
       (entryhi & asid_mask) == asid)) {



   printk("Index: %2d ", i);

   pr_cont("va=%08lx asid=%08lx"
    "  [pa=%06lx n=%d d=%d v=%d g=%d]",
    entryhi & PAGE_MASK,
    entryhi & asid_mask,
    entrylo0 & PAGE_MASK,
    (entrylo0 & R3K_ENTRYLO_N) ? 1 : 0,
    (entrylo0 & R3K_ENTRYLO_D) ? 1 : 0,
    (entrylo0 & R3K_ENTRYLO_V) ? 1 : 0,
    (entrylo0 & R3K_ENTRYLO_G) ? 1 : 0);
  }
 }
 printk("\n");

 write_c0_entryhi(asid);
}
