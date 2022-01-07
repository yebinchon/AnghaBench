
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int linesz; int ways; int sets; int flags; int waysize; void* waybit; } ;
struct TYPE_3__ {int linesz; int ways; int sets; int flags; int waysize; void* waybit; } ;
struct cpuinfo_mips {int options; int processor_id; TYPE_2__ dcache; TYPE_1__ icache; } ;


 unsigned int CONF_DB ;
 unsigned int CONF_DC ;
 unsigned int CONF_IB ;
 unsigned int CONF_IC ;
 unsigned int CONF_SC ;
 int MIPS_CACHE_ALIASES ;
 int MIPS_CACHE_IC_F_DC ;
 int MIPS_CACHE_PINDEX ;
 int MIPS_CACHE_VTAG ;
 int MIPS_CONF7_AR ;
 int MIPS_CONF7_IAR ;
 unsigned int MIPS_CONF_M ;
 unsigned int MIPS_CONF_VI ;
 int MIPS_CPU_CACHE_CDEX_P ;
 int MIPS_CPU_PREFETCH ;
 int MIPS_IC_SNOOPS_REMOTE ;
 int PAGE_SIZE ;
 unsigned int PRID_IMP_MASK ;
 unsigned int PRID_IMP_R4000 ;
 unsigned int PRID_REV_LOONGSON3A_R2_0 ;
 unsigned int PRID_REV_MASK ;
 unsigned int PRID_REV_R4400 ;
 unsigned int R10K_CONF_DC ;
 unsigned int R10K_CONF_IC ;
 unsigned int VR41_CONF_BP ;
 unsigned int VR41_CONF_P4K ;
 void* __ffs (int) ;
 int alias_74k_erratum (struct cpuinfo_mips*) ;
 struct cpuinfo_mips current_cpu_data ;
 int current_cpu_type () ;
 int dcache_size ;
 int icache_size ;
 scalar_t__ mips_cm_present () ;
 int panic (char*) ;
 int printk (char*,int,char*,char*,...) ;
 unsigned int read_c0_config () ;
 unsigned long read_c0_config1 () ;
 int read_c0_config7 () ;
 unsigned int read_c0_prid () ;
 int rm7k_erratum31 () ;
 int * way_string ;
 int write_c0_config (unsigned int) ;

__attribute__((used)) static void probe_pcache(void)
{
 struct cpuinfo_mips *c = &current_cpu_data;
 unsigned int config = read_c0_config();
 unsigned int prid = read_c0_prid();
 int has_74k_erratum = 0;
 unsigned long config1;
 unsigned int lsize;

 switch (current_cpu_type()) {
 case 144:
 case 143:
 case 142:
 case 159:
  icache_size = 1 << (12 + ((config & CONF_IC) >> 9));
  c->icache.linesz = 16 << ((config & CONF_IB) >> 5);
  c->icache.ways = 2;
  c->icache.waybit = __ffs(icache_size/2);

  dcache_size = 1 << (12 + ((config & CONF_DC) >> 6));
  c->dcache.linesz = 16 << ((config & CONF_DB) >> 4);
  c->dcache.ways = 2;
  c->dcache.waybit= __ffs(dcache_size/2);

  c->options |= MIPS_CPU_CACHE_CDEX_P;
  break;

 case 141:
  icache_size = 1 << (12 + ((config & CONF_IC) >> 9));
  c->icache.linesz = 16 << ((config & CONF_IB) >> 5);
  c->icache.ways = 2;
  c->icache.waybit= 0;

  dcache_size = 1 << (12 + ((config & CONF_DC) >> 6));
  c->dcache.linesz = 16 << ((config & CONF_DB) >> 4);
  c->dcache.ways = 2;
  c->dcache.waybit = 0;

  c->options |= MIPS_CPU_CACHE_CDEX_P | MIPS_CPU_PREFETCH;
  break;

 case 137:
  icache_size = 1 << (12 + ((config & CONF_IC) >> 9));
  c->icache.linesz = 16 << ((config & CONF_IB) >> 5);
  c->icache.ways = 4;
  c->icache.waybit= 0;

  dcache_size = 1 << (12 + ((config & CONF_DC) >> 6));
  c->dcache.linesz = 16 << ((config & CONF_DB) >> 4);
  c->dcache.ways = 4;
  c->dcache.waybit = 0;

  c->options |= MIPS_CPU_CACHE_CDEX_P;
  c->options |= MIPS_CPU_PREFETCH;
  break;

 case 149:
 case 148:
 case 150:
 case 146:
 case 145:
 case 147:
  icache_size = 1 << (12 + ((config & CONF_IC) >> 9));
  c->icache.linesz = 16 << ((config & CONF_IB) >> 5);
  c->icache.ways = 1;
  c->icache.waybit = 0;

  dcache_size = 1 << (12 + ((config & CONF_DC) >> 6));
  c->dcache.linesz = 16 << ((config & CONF_DB) >> 4);
  c->dcache.ways = 1;
  c->dcache.waybit = 0;

  c->options |= MIPS_CPU_CACHE_CDEX_P;
  break;

 case 154:
 case 153:
 case 152:
 case 151:
  icache_size = 1 << (12 + ((config & R10K_CONF_IC) >> 29));
  c->icache.linesz = 64;
  c->icache.ways = 2;
  c->icache.waybit = 0;

  dcache_size = 1 << (12 + ((config & R10K_CONF_DC) >> 26));
  c->dcache.linesz = 32;
  c->dcache.ways = 2;
  c->dcache.waybit = 0;

  c->options |= MIPS_CPU_PREFETCH;
  break;

 case 132:
  write_c0_config(config & ~VR41_CONF_P4K);

 case 133:

  if (c->processor_id == 0x0c80U || c->processor_id == 0x0c81U ||
      c->processor_id == 0x0c82U) {
   config |= 0x00400000U;
   if (c->processor_id == 0x0c80U)
    config |= VR41_CONF_BP;
   write_c0_config(config);
  } else
   c->options |= MIPS_CPU_CACHE_CDEX_P;

  icache_size = 1 << (10 + ((config & CONF_IC) >> 9));
  c->icache.linesz = 16 << ((config & CONF_IB) >> 5);
  c->icache.ways = 2;
  c->icache.waybit = __ffs(icache_size/2);

  dcache_size = 1 << (10 + ((config & CONF_DC) >> 6));
  c->dcache.linesz = 16 << ((config & CONF_DB) >> 4);
  c->dcache.ways = 2;
  c->dcache.waybit = __ffs(dcache_size/2);
  break;

 case 129:
 case 136:
 case 135:
 case 134:
 case 131:
 case 130:
  icache_size = 1 << (10 + ((config & CONF_IC) >> 9));
  c->icache.linesz = 16 << ((config & CONF_IB) >> 5);
  c->icache.ways = 1;
  c->icache.waybit = 0;

  dcache_size = 1 << (10 + ((config & CONF_DC) >> 6));
  c->dcache.linesz = 16 << ((config & CONF_DB) >> 4);
  c->dcache.ways = 1;
  c->dcache.waybit = 0;

  c->options |= MIPS_CPU_CACHE_CDEX_P;
  break;

 case 140:
  rm7k_erratum31();

  icache_size = 1 << (12 + ((config & CONF_IC) >> 9));
  c->icache.linesz = 16 << ((config & CONF_IB) >> 5);
  c->icache.ways = 4;
  c->icache.waybit = __ffs(icache_size / c->icache.ways);

  dcache_size = 1 << (12 + ((config & CONF_DC) >> 6));
  c->dcache.linesz = 16 << ((config & CONF_DB) >> 4);
  c->dcache.ways = 4;
  c->dcache.waybit = __ffs(dcache_size / c->dcache.ways);

  c->options |= MIPS_CPU_CACHE_CDEX_P;
  c->options |= MIPS_CPU_PREFETCH;
  break;

 case 165:
  icache_size = 1 << (12 + ((config & CONF_IC) >> 9));
  c->icache.linesz = 16 << ((config & CONF_IB) >> 5);
  if (prid & 0x3)
   c->icache.ways = 4;
  else
   c->icache.ways = 2;
  c->icache.waybit = 0;

  dcache_size = 1 << (12 + ((config & CONF_DC) >> 6));
  c->dcache.linesz = 16 << ((config & CONF_DB) >> 4);
  if (prid & 0x3)
   c->dcache.ways = 4;
  else
   c->dcache.ways = 2;
  c->dcache.waybit = 0;
  break;

 case 164:
  config1 = read_c0_config1();
  lsize = (config1 >> 19) & 7;
  if (lsize)
   c->icache.linesz = 2 << lsize;
  else
   c->icache.linesz = 0;
  c->icache.sets = 64 << ((config1 >> 22) & 7);
  c->icache.ways = 1 + ((config1 >> 16) & 7);
  icache_size = c->icache.sets *
       c->icache.ways *
       c->icache.linesz;
  c->icache.waybit = 0;

  lsize = (config1 >> 10) & 7;
  if (lsize)
   c->dcache.linesz = 2 << lsize;
  else
   c->dcache.linesz = 0;
  c->dcache.sets = 64 << ((config1 >> 13) & 7);
  c->dcache.ways = 1 + ((config1 >> 7) & 7);
  dcache_size = c->dcache.sets *
       c->dcache.ways *
       c->dcache.linesz;
  c->dcache.waybit = 0;
  if ((prid & PRID_REV_MASK) >= PRID_REV_LOONGSON3A_R2_0)
   c->options |= MIPS_CPU_PREFETCH;
  break;

 case 169:

  c->icache.linesz = 128;
  c->icache.sets = 16;
  c->icache.ways = 8;
  c->icache.flags |= MIPS_CACHE_VTAG;
  icache_size = c->icache.sets * c->icache.ways * c->icache.linesz;

  c->dcache.linesz = 128;
  c->dcache.ways = 8;
  c->dcache.sets = 8;
  dcache_size = c->dcache.sets * c->dcache.ways * c->dcache.linesz;
  c->options |= MIPS_CPU_PREFETCH;
  break;

 default:
  if (!(config & MIPS_CONF_M))
   panic("Don't know how to probe P-caches on this cpu.");





  config1 = read_c0_config1();

  lsize = (config1 >> 19) & 7;


  if (lsize == 7)
   panic("Invalid icache line size");

  c->icache.linesz = lsize ? 2 << lsize : 0;

  c->icache.sets = 32 << (((config1 >> 22) + 1) & 7);
  c->icache.ways = 1 + ((config1 >> 16) & 7);

  icache_size = c->icache.sets *
         c->icache.ways *
         c->icache.linesz;
  c->icache.waybit = __ffs(icache_size/c->icache.ways);

  if (config & MIPS_CONF_VI)
   c->icache.flags |= MIPS_CACHE_VTAG;




  c->dcache.flags = 0;

  lsize = (config1 >> 10) & 7;


  if (lsize == 7)
   panic("Invalid dcache line size");

  c->dcache.linesz = lsize ? 2 << lsize : 0;

  c->dcache.sets = 32 << (((config1 >> 13) + 1) & 7);
  c->dcache.ways = 1 + ((config1 >> 7) & 7);

  dcache_size = c->dcache.sets *
         c->dcache.ways *
         c->dcache.linesz;
  c->dcache.waybit = __ffs(dcache_size/c->dcache.ways);

  c->options |= MIPS_CPU_PREFETCH;
  break;
 }
 if ((prid & PRID_IMP_MASK) == PRID_IMP_R4000 &&
     (prid & PRID_REV_MASK) < PRID_REV_R4400 &&
     !(config & CONF_SC) && c->icache.linesz != 16 &&
     PAGE_SIZE <= 0x8000)
  panic("Improper R4000SC processor configuration detected");


 c->icache.waysize = icache_size / c->icache.ways;
 c->dcache.waysize = dcache_size / c->dcache.ways;

 c->icache.sets = c->icache.linesz ?
  icache_size / (c->icache.linesz * c->icache.ways) : 0;
 c->dcache.sets = c->dcache.linesz ?
  dcache_size / (c->dcache.linesz * c->dcache.ways) : 0;







 switch (current_cpu_type()) {
 case 176:
 case 174:
 case 168:
 case 167:
 case 139:
 case 138:
 case 128:
  c->dcache.flags |= MIPS_CACHE_PINDEX;
  break;

 case 154:
 case 153:
 case 152:
 case 151:
  break;

 case 172:
 case 177:
  has_74k_erratum = alias_74k_erratum(c);

 case 163:
 case 162:
 case 175:
 case 173:
 case 178:
 case 166:
 case 158:
 case 156:
 case 161:
 case 155:
 case 157:
 case 160:
  if (!(read_c0_config7() & MIPS_CONF7_IAR) &&
      (c->icache.waysize > PAGE_SIZE))
   c->icache.flags |= MIPS_CACHE_ALIASES;
  if (!has_74k_erratum && (read_c0_config7() & MIPS_CONF7_AR)) {




   c->dcache.flags |= MIPS_CACHE_PINDEX;
   break;
  }

 default:
  if (has_74k_erratum || c->dcache.waysize > PAGE_SIZE)
   c->dcache.flags |= MIPS_CACHE_ALIASES;
 }


 if (c->dcache.flags & MIPS_CACHE_PINDEX)
  c->dcache.flags &= ~MIPS_CACHE_ALIASES;






 if (mips_cm_present())
  c->icache.flags |= MIPS_IC_SNOOPS_REMOTE;

 switch (current_cpu_type()) {
 case 176:




  c->icache.flags |= MIPS_CACHE_VTAG;
  break;

 case 171:
 case 168:
 case 167:
  c->icache.flags |= MIPS_CACHE_IC_F_DC;
  break;

 case 170:
  c->icache.flags |= MIPS_CACHE_IC_F_DC;

  c->dcache.flags &= ~MIPS_CACHE_ALIASES;
  break;

 case 165:




  c->icache.ways = 1;
 }

 printk("Primary instruction cache %ldkB, %s, %s, linesize %d bytes.\n",
        icache_size >> 10,
        c->icache.flags & MIPS_CACHE_VTAG ? "VIVT" : "VIPT",
        way_string[c->icache.ways], c->icache.linesz);

 printk("Primary data cache %ldkB, %s, %s, %s, linesize %d bytes\n",
        dcache_size >> 10, way_string[c->dcache.ways],
        (c->dcache.flags & MIPS_CACHE_PINDEX) ? "PIPT" : "VIPT",
        (c->dcache.flags & MIPS_CACHE_ALIASES) ?
   "cache aliases" : "no aliases",
        c->dcache.linesz);
}
