
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int linesz; int ways; int sets; int flags; int waysize; int waybit; } ;
struct cpuinfo_mips {int isa_level; int options; TYPE_1__ scache; } ;
 int MIPS_CACHE_NOT_PRESENT ;
 int MIPS_CPU_CACHE_CDEX_S ;
 int MIPS_CPU_INCLUSIVE_CACHES ;
 int MIPS_CPU_ISA_M32R1 ;
 int MIPS_CPU_ISA_M32R2 ;
 int MIPS_CPU_ISA_M32R6 ;
 int MIPS_CPU_ISA_M64R1 ;
 int MIPS_CPU_ISA_M64R2 ;
 int MIPS_CPU_ISA_M64R6 ;
 unsigned int R10K_CONF_SS ;
 struct cpuinfo_mips current_cpu_data ;
 int current_cpu_type () ;
 int loongson2_sc_init () ;
 int loongson3_sc_init () ;
 int mips_sc_init () ;
 int panic (char*) ;
 int printk (char*,int,int ,int) ;
 int probe_scache ;
 int r5k_sc_init () ;
 unsigned int read_c0_config () ;
 int rm7k_sc_init () ;
 int run_uncached (int ) ;
 int scache_size ;
 int * way_string ;

__attribute__((used)) static void setup_scache(void)
{
 struct cpuinfo_mips *c = &current_cpu_data;
 unsigned int config = read_c0_config();
 int sc_present = 0;






 switch (current_cpu_type()) {
 case 133:
 case 134:
 case 131:
 case 132:
  sc_present = run_uncached(probe_scache);
  if (sc_present)
   c->options |= MIPS_CPU_CACHE_CDEX_S;
  break;

 case 138:
 case 137:
 case 136:
 case 135:
  scache_size = 0x80000 << ((config & R10K_CONF_SS) >> 16);
  c->scache.linesz = 64 << ((config >> 13) & 1);
  c->scache.ways = 2;
  c->scache.waybit= 0;
  sc_present = 1;
  break;

 case 130:
 case 139:



  return;

 case 129:



  return;

 case 141:
  loongson2_sc_init();
  return;

 case 140:
  loongson3_sc_init();
  return;

 case 142:
 case 128:

  return;

 default:
  if (c->isa_level & (MIPS_CPU_ISA_M32R1 | MIPS_CPU_ISA_M32R2 |
        MIPS_CPU_ISA_M32R6 | MIPS_CPU_ISA_M64R1 |
        MIPS_CPU_ISA_M64R2 | MIPS_CPU_ISA_M64R6)) {
   if (!(c->scache.flags & MIPS_CACHE_NOT_PRESENT))
    panic("Dunno how to handle MIPS32 / MIPS64 second level cache");

   return;
  }
  sc_present = 0;
 }

 if (!sc_present)
  return;


 c->scache.waysize = scache_size / c->scache.ways;

 c->scache.sets = scache_size / (c->scache.linesz * c->scache.ways);

 printk("Unified secondary cache %ldkB %s, linesize %d bytes.\n",
        scache_size >> 10, way_string[c->scache.ways], c->scache.linesz);

 c->options |= MIPS_CPU_INCLUSIVE_CACHES;
}
