
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tlbsize; } ;


 scalar_t__ CPU_R10000 ;
 scalar_t__ CPU_R12000 ;
 scalar_t__ CPU_R14000 ;
 scalar_t__ CPU_R16000 ;
 int PAGE_SIZE ;
 int PG_ELPA ;
 int PG_RIE ;
 int PG_XIE ;
 scalar_t__ PM_DEFAULT_MASK ;
 int back_to_back_c0_hazard () ;
 scalar_t__ cpu_has_rixi ;
 TYPE_1__ current_cpu_data ;
 scalar_t__ current_cpu_type () ;
 int local_flush_tlb_all () ;
 int panic (char*,int ) ;
 scalar_t__ read_c0_pagemask () ;
 int set_c0_pagegrain (int) ;
 scalar_t__ temp_tlb_entry ;
 int write_c0_framemask (int ) ;
 int write_c0_pagemask (scalar_t__) ;
 int write_c0_wired (int ) ;

__attribute__((used)) static void r4k_tlb_configure(void)
{







 write_c0_pagemask(PM_DEFAULT_MASK);
 back_to_back_c0_hazard();
 if (read_c0_pagemask() != PM_DEFAULT_MASK)
  panic("MMU doesn't support PAGE_SIZE=0x%lx", PAGE_SIZE);

 write_c0_wired(0);
 if (current_cpu_type() == CPU_R10000 ||
     current_cpu_type() == CPU_R12000 ||
     current_cpu_type() == CPU_R14000 ||
     current_cpu_type() == CPU_R16000)
  write_c0_framemask(0);

 if (cpu_has_rixi) {







  set_c0_pagegrain(PG_RIE | PG_XIE);

 }

 temp_tlb_entry = current_cpu_data.tlbsize - 1;


 local_flush_tlb_all();


}
