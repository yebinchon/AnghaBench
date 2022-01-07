
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ways; int sets; int linesz; int way_incr; int entry_shift; int way_size; int entry_mask; scalar_t__ flags; } ;
struct TYPE_4__ {TYPE_1__ dcache; TYPE_1__ icache; int family; int type; } ;


 int CPU_FAMILY_SH5 ;
 int CPU_SH5_101 ;
 int CPU_SH5_103 ;
 int L1_CACHE_BYTES ;
 int SH_CACHE_MODE_WB ;
 int SH_CACHE_MODE_WT ;
 TYPE_2__ boot_cpu_data ;
 unsigned long long peek_real_address_q (int) ;
 int set_bit (int ,scalar_t__*) ;
 int sh64_tlb_init () ;

void cpu_probe(void)
{
 unsigned long long cir;







 cir = peek_real_address_q(0x0d000008);
 if ((cir & 0xffff) == 0x5103)
  boot_cpu_data.type = CPU_SH5_103;
 else if (((cir >> 32) & 0xffff) == 0x51e2)

  boot_cpu_data.type = CPU_SH5_101;

 boot_cpu_data.family = CPU_FAMILY_SH5;




 boot_cpu_data.icache.ways = 4;
 boot_cpu_data.icache.sets = 256;
 boot_cpu_data.icache.linesz = L1_CACHE_BYTES;
 boot_cpu_data.icache.way_incr = (1 << 13);
 boot_cpu_data.icache.entry_shift = 5;
 boot_cpu_data.icache.way_size = boot_cpu_data.icache.sets *
        boot_cpu_data.icache.linesz;
 boot_cpu_data.icache.entry_mask = 0x1fe0;
 boot_cpu_data.icache.flags = 0;
 boot_cpu_data.dcache = boot_cpu_data.icache;
 sh64_tlb_init();
}
