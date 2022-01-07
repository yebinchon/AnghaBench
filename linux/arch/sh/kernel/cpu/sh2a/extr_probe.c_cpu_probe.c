
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ways; int way_incr; int sets; int entry_shift; scalar_t__ flags; int linesz; } ;
struct TYPE_4__ {TYPE_1__ dcache; TYPE_1__ icache; int flags; int type; int family; } ;


 int CPU_FAMILY_SH2A ;
 int CPU_HAS_DSP ;
 int CPU_HAS_FPU ;
 int CPU_HAS_OP32 ;
 int CPU_MXG ;
 int CPU_SH7201 ;
 int CPU_SH7203 ;
 int CPU_SH7206 ;
 int CPU_SH7263 ;
 int CPU_SH7264 ;
 int CPU_SH7269 ;
 int L1_CACHE_BYTES ;
 TYPE_2__ boot_cpu_data ;

void cpu_probe(void)
{
 boot_cpu_data.family = CPU_FAMILY_SH2A;


 boot_cpu_data.flags |= CPU_HAS_OP32;
 boot_cpu_data.dcache.ways = 4;
 boot_cpu_data.dcache.way_incr = (1 << 11);
 boot_cpu_data.dcache.sets = 128;
 boot_cpu_data.dcache.entry_shift = 4;
 boot_cpu_data.dcache.linesz = L1_CACHE_BYTES;
 boot_cpu_data.dcache.flags = 0;







 boot_cpu_data.icache = boot_cpu_data.dcache;
}
