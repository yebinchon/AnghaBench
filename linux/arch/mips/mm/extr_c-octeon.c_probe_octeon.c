
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int linesz; int sets; int ways; unsigned long waysize; int waybit; } ;
struct TYPE_3__ {int linesz; int sets; int ways; unsigned long waysize; int flags; int waybit; } ;
struct cpuinfo_mips {TYPE_2__ dcache; TYPE_1__ icache; int options; } ;






 int MIPS_CACHE_VTAG ;
 int MIPS_CPU_PREFETCH ;
 scalar_t__ cpu_has_vtag_icache ;
 struct cpuinfo_mips current_cpu_data ;
 int current_cpu_type () ;
 int ffs (unsigned long) ;
 int panic (char*) ;
 int pr_notice (char*,unsigned long,...) ;
 unsigned int read_c0_config1 () ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static void probe_octeon(void)
{
 unsigned long icache_size;
 unsigned long dcache_size;
 unsigned int config1;
 struct cpuinfo_mips *c = &current_cpu_data;
 int cputype = current_cpu_type();

 config1 = read_c0_config1();
 switch (cputype) {
 case 131:
 case 128:
  c->icache.linesz = 2 << ((config1 >> 19) & 7);
  c->icache.sets = 64 << ((config1 >> 22) & 7);
  c->icache.ways = 1 + ((config1 >> 16) & 7);
  c->icache.flags |= MIPS_CACHE_VTAG;
  icache_size =
   c->icache.sets * c->icache.ways * c->icache.linesz;
  c->icache.waybit = ffs(icache_size / c->icache.ways) - 1;
  c->dcache.linesz = 128;
  if (cputype == 128)
   c->dcache.sets = 2;
  else
   c->dcache.sets = 1;
  c->dcache.ways = 64;
  dcache_size =
   c->dcache.sets * c->dcache.ways * c->dcache.linesz;
  c->dcache.waybit = ffs(dcache_size / c->dcache.ways) - 1;
  c->options |= MIPS_CPU_PREFETCH;
  break;

 case 130:
  c->icache.linesz = 2 << ((config1 >> 19) & 7);
  c->icache.sets = 8;
  c->icache.ways = 37;
  c->icache.flags |= MIPS_CACHE_VTAG;
  icache_size = c->icache.sets * c->icache.ways * c->icache.linesz;

  c->dcache.linesz = 128;
  c->dcache.ways = 32;
  c->dcache.sets = 8;
  dcache_size = c->dcache.sets * c->dcache.ways * c->dcache.linesz;
  c->options |= MIPS_CPU_PREFETCH;
  break;

 case 129:
  c->icache.linesz = 128;
  c->icache.sets = 16;
  c->icache.ways = 39;
  c->icache.flags |= MIPS_CACHE_VTAG;
  icache_size = c->icache.sets * c->icache.ways * c->icache.linesz;

  c->dcache.linesz = 128;
  c->dcache.ways = 32;
  c->dcache.sets = 8;
  dcache_size = c->dcache.sets * c->dcache.ways * c->dcache.linesz;
  c->options |= MIPS_CPU_PREFETCH;
  break;

 default:
  panic("Unsupported Cavium Networks CPU type");
  break;
 }


 c->icache.waysize = icache_size / c->icache.ways;
 c->dcache.waysize = dcache_size / c->dcache.ways;

 c->icache.sets = icache_size / (c->icache.linesz * c->icache.ways);
 c->dcache.sets = dcache_size / (c->dcache.linesz * c->dcache.ways);

 if (smp_processor_id() == 0) {
  pr_notice("Primary instruction cache %ldkB, %s, %d way, "
     "%d sets, linesize %d bytes.\n",
     icache_size >> 10,
     cpu_has_vtag_icache ?
    "virtually tagged" : "physically tagged",
     c->icache.ways, c->icache.sets, c->icache.linesz);

  pr_notice("Primary data cache %ldkB, %d-way, %d sets, "
     "linesize %d bytes.\n",
     dcache_size >> 10, c->dcache.ways,
     c->dcache.sets, c->dcache.linesz);
 }
}
