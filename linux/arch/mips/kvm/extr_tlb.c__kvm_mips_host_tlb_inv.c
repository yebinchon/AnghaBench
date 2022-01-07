
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tlbsize; } ;


 int BUG () ;
 unsigned long UNIQUE_ENTRYHI (int) ;
 TYPE_1__ current_cpu_data ;
 int mtc0_tlbw_hazard () ;
 int read_c0_index () ;
 int tlb_probe () ;
 int tlb_probe_hazard () ;
 int tlb_write_indexed () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo0 (int ) ;
 int write_c0_entrylo1 (int ) ;

__attribute__((used)) static int _kvm_mips_host_tlb_inv(unsigned long entryhi)
{
 int idx;

 write_c0_entryhi(entryhi);
 mtc0_tlbw_hazard();

 tlb_probe();
 tlb_probe_hazard();
 idx = read_c0_index();

 if (idx >= current_cpu_data.tlbsize)
  BUG();

 if (idx >= 0) {
  write_c0_entryhi(UNIQUE_ENTRYHI(idx));
  write_c0_entrylo0(0);
  write_c0_entrylo1(0);
  mtc0_tlbw_hazard();

  tlb_write_indexed();
  tlbw_use_hazard();
 }

 return idx;
}
