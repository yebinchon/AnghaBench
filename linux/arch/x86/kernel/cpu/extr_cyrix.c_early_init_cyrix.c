
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int X86_FEATURE_CYRIX_ARR ;
 int __do_cyrix_devid (unsigned char*,unsigned char*) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;

__attribute__((used)) static void early_init_cyrix(struct cpuinfo_x86 *c)
{
 unsigned char dir0, dir0_msn, dir1 = 0;

 __do_cyrix_devid(&dir0, &dir1);
 dir0_msn = dir0 >> 4;

 switch (dir0_msn) {
 case 3:

  set_cpu_cap(c, X86_FEATURE_CYRIX_ARR);
  break;
 case 5:

  set_cpu_cap(c, X86_FEATURE_CYRIX_ARR);
  break;
 }
}
