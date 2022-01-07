
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int processor_id; int cputype; int options; void* writecombine; } ;


 int CPU_1004K ;
 int CPU_1074K ;
 int CPU_20KC ;
 void* CPU_24K ;
 int CPU_25KF ;
 int CPU_34K ;
 int CPU_4KC ;
 int CPU_4KEC ;
 int CPU_4KSC ;
 int CPU_5KC ;
 int CPU_5KE ;
 int CPU_74K ;


 void* CPU_INTERAPTIV ;
 int CPU_M14KC ;
 int CPU_M14KEC ;
 int CPU_M5150 ;
 int CPU_M6250 ;
 int CPU_P5600 ;
 int CPU_P6600 ;
 void* CPU_PROAPTIV ;
 int CPU_QEMU_GENERIC ;
 int MIPS_CPU_SHARED_FTLB_ENTRIES ;
 int MIPS_CPU_SHARED_FTLB_RAM ;
 int PRID_IMP_MASK ;





 void* _CACHE_UNCACHED ;
 void* _CACHE_UNCACHED_ACCELERATED ;
 char** __cpu_name ;
 int __get_cpu_type (int) ;
 int cpu_set_mt_per_tc_perf (struct cpuinfo_mips*) ;
 int decode_configs (struct cpuinfo_mips*) ;
 int spram_config () ;

__attribute__((used)) static inline void cpu_probe_mips(struct cpuinfo_mips *c, unsigned int cpu)
{
 c->writecombine = _CACHE_UNCACHED_ACCELERATED;
 switch (c->processor_id & PRID_IMP_MASK) {
 case 128:
  c->writecombine = _CACHE_UNCACHED;
  c->cputype = CPU_QEMU_GENERIC;
  __cpu_name[cpu] = "MIPS GENERIC QEMU";
  break;
 case 148:
  c->cputype = CPU_4KC;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 4Kc";
  break;
 case 147:
 case 146:
  c->cputype = CPU_4KEC;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 4KEc";
  break;
 case 145:
 case 144:
  c->cputype = CPU_4KSC;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 4KSc";
  break;
 case 143:
  c->cputype = CPU_5KC;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 5Kc";
  break;
 case 142:
  c->cputype = CPU_5KE;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 5KE";
  break;
 case 153:
  c->cputype = CPU_20KC;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 20Kc";
  break;
 case 152:
  c->cputype = CPU_24K;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 24Kc";
  break;
 case 151:
  c->cputype = CPU_24K;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 24KEc";
  break;
 case 150:
  c->cputype = CPU_25KF;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 25Kc";
  break;
 case 149:
  c->cputype = CPU_34K;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 34Kc";
  cpu_set_mt_per_tc_perf(c);
  break;
 case 141:
  c->cputype = CPU_74K;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 74Kc";
  break;
 case 136:
  c->cputype = CPU_M14KC;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS M14Kc";
  break;
 case 135:
  c->cputype = CPU_M14KEC;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS M14KEc";
  break;
 case 155:
  c->cputype = CPU_1004K;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 1004Kc";
  cpu_set_mt_per_tc_perf(c);
  break;
 case 154:
  c->cputype = CPU_1074K;
  c->writecombine = _CACHE_UNCACHED;
  __cpu_name[cpu] = "MIPS 1074Kc";
  break;
 case 137:
  c->cputype = CPU_INTERAPTIV;
  __cpu_name[cpu] = "MIPS interAptiv";
  cpu_set_mt_per_tc_perf(c);
  break;
 case 138:
  c->cputype = CPU_INTERAPTIV;
  __cpu_name[cpu] = "MIPS interAptiv (multi)";
  cpu_set_mt_per_tc_perf(c);
  break;
 case 129:
  c->cputype = CPU_PROAPTIV;
  __cpu_name[cpu] = "MIPS proAptiv";
  break;
 case 130:
  c->cputype = CPU_PROAPTIV;
  __cpu_name[cpu] = "MIPS proAptiv (multi)";
  break;
 case 132:
  c->cputype = CPU_P5600;
  __cpu_name[cpu] = "MIPS P5600";
  break;
 case 131:
  c->cputype = CPU_P6600;
  __cpu_name[cpu] = "MIPS P6600";
  break;
 case 140:
  c->cputype = 157;
  __cpu_name[cpu] = "MIPS I6400";
  break;
 case 139:
  c->cputype = 156;
  __cpu_name[cpu] = "MIPS I6500";
  break;
 case 134:
  c->cputype = CPU_M5150;
  __cpu_name[cpu] = "MIPS M5150";
  break;
 case 133:
  c->cputype = CPU_M6250;
  __cpu_name[cpu] = "MIPS M6250";
  break;
 }

 decode_configs(c);

 spram_config();

 switch (__get_cpu_type(c->cputype)) {
 case 156:
  c->options |= MIPS_CPU_SHARED_FTLB_ENTRIES;

 case 157:
  c->options |= MIPS_CPU_SHARED_FTLB_RAM;

 default:
  break;
 }
}
