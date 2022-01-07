
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tlbsize; } ;


 unsigned long cpu_asid_mask (TYPE_1__*) ;
 TYPE_1__ current_cpu_data ;
 unsigned long read_c0_entryhi () ;
 int tlb_write_indexed () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo0 (int ) ;
 int write_c0_index (int) ;

__attribute__((used)) static void local_flush_tlb_from(int entry)
{
 unsigned long old_ctx;

 old_ctx = read_c0_entryhi() & cpu_asid_mask(&current_cpu_data);
 write_c0_entrylo0(0);
 while (entry < current_cpu_data.tlbsize) {
  write_c0_index(entry << 8);
  write_c0_entryhi((entry | 0x80000) << 12);
  entry++;
  tlb_write_indexed();
 }
 write_c0_entryhi(old_ctx);
}
