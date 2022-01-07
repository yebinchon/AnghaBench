
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;



 unsigned long SAFARI_CFG_DIV_MASK ;
 int sparc64_get_clock_tick (unsigned int) ;

__attribute__((used)) static unsigned long get_current_freq(unsigned int cpu, unsigned long safari_cfg)
{
 unsigned long clock_tick = sparc64_get_clock_tick(cpu) / 1000;
 unsigned long ret;

 switch (safari_cfg & SAFARI_CFG_DIV_MASK) {
 case 130:
  ret = clock_tick / 1;
  break;
 case 129:
  ret = clock_tick / 2;
  break;
 case 128:
  ret = clock_tick / 32;
  break;
 default:
  BUG();
 }

 return ret;
}
