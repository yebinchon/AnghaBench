
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tlbsize; } ;


 int build_tlb_refill_handler () ;
 TYPE_1__ current_cpu_data ;
 int ntlb ;
 int printk (char*,int) ;
 int r4k_tlb_configure () ;
 int write_c0_index (int) ;
 int write_c0_wired (int) ;

void tlb_init(void)
{
 r4k_tlb_configure();

 if (ntlb) {
  if (ntlb > 1 && ntlb <= current_cpu_data.tlbsize) {
   int wired = current_cpu_data.tlbsize - ntlb;
   write_c0_wired(wired);
   write_c0_index(wired-1);
   printk("Restricting TLB to %d entries\n", ntlb);
  } else
   printk("Ignoring invalid argument ntlb=%d\n", ntlb);
 }

 build_tlb_refill_handler();
}
