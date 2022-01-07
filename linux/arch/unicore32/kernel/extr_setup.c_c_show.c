
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int HZ ;
 int elf_platform ;
 int loops_per_jiffy ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int uc32_cpuid ;

__attribute__((used)) static int c_show(struct seq_file *m, void *v)
{
 seq_printf(m, "Processor\t: UniCore-II rev %d (%s)\n",
     (int)(uc32_cpuid >> 16) & 15, elf_platform);

 seq_printf(m, "BogoMIPS\t: %lu.%02lu\n",
     loops_per_jiffy / (500000/HZ),
     (loops_per_jiffy / (5000/HZ)) % 100);


 seq_puts(m, "Features\t: CMOV UC-F64");

 seq_printf(m, "\nCPU implementer\t: 0x%02x\n", uc32_cpuid >> 24);
 seq_printf(m, "CPU architecture: 2\n");
 seq_printf(m, "CPU revision\t: %d\n", (uc32_cpuid >> 16) & 15);

 seq_printf(m, "Cache type\t: write-back\n"
   "Cache clean\t: cp0 c5 ops\n"
   "Cache lockdown\t: not support\n"
   "Cache format\t: Harvard\n");

 seq_puts(m, "\n");

 seq_printf(m, "Hardware\t: PKUnity v3\n");

 return 0;
}
