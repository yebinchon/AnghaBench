
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int options; unsigned int* watch_reg_masks; int watch_reg_count; int watch_reg_use_cnt; } ;


 int MIPS_CPU_WATCH ;
 unsigned int MIPS_WATCHHI_M ;
 unsigned int MIPS_WATCHHI_MASK ;
 unsigned int MIPS_WATCHLO_IRW ;
 int back_to_back_c0_hazard () ;
 unsigned int read_c0_watchhi0 () ;
 unsigned int read_c0_watchhi1 () ;
 unsigned int read_c0_watchhi2 () ;
 unsigned int read_c0_watchhi3 () ;
 unsigned int read_c0_watchhi4 () ;
 unsigned int read_c0_watchhi5 () ;
 unsigned int read_c0_watchhi6 () ;
 unsigned int read_c0_watchlo0 () ;
 unsigned int read_c0_watchlo1 () ;
 unsigned int read_c0_watchlo2 () ;
 unsigned int read_c0_watchlo3 () ;
 int write_c0_watchhi0 (unsigned int) ;
 int write_c0_watchhi1 (unsigned int) ;
 int write_c0_watchhi2 (unsigned int) ;
 int write_c0_watchhi3 (unsigned int) ;
 int write_c0_watchlo0 (unsigned int) ;
 int write_c0_watchlo1 (unsigned int) ;
 int write_c0_watchlo2 (unsigned int) ;
 int write_c0_watchlo3 (unsigned int) ;

void mips_probe_watch_registers(struct cpuinfo_mips *c)
{
 unsigned int t;

 if ((c->options & MIPS_CPU_WATCH) == 0)
  return;




 write_c0_watchlo0(MIPS_WATCHLO_IRW);
 back_to_back_c0_hazard();
 t = read_c0_watchlo0();
 write_c0_watchlo0(0);
 c->watch_reg_masks[0] = t & MIPS_WATCHLO_IRW;



 c->watch_reg_count = 1;
 c->watch_reg_use_cnt = 1;
 t = read_c0_watchhi0();
 write_c0_watchhi0(t | MIPS_WATCHHI_MASK);
 back_to_back_c0_hazard();
 t = read_c0_watchhi0();
 c->watch_reg_masks[0] |= (t & MIPS_WATCHHI_MASK);
 if ((t & MIPS_WATCHHI_M) == 0)
  return;

 write_c0_watchlo1(MIPS_WATCHLO_IRW);
 back_to_back_c0_hazard();
 t = read_c0_watchlo1();
 write_c0_watchlo1(0);
 c->watch_reg_masks[1] = t & MIPS_WATCHLO_IRW;

 c->watch_reg_count = 2;
 c->watch_reg_use_cnt = 2;
 t = read_c0_watchhi1();
 write_c0_watchhi1(t | MIPS_WATCHHI_MASK);
 back_to_back_c0_hazard();
 t = read_c0_watchhi1();
 c->watch_reg_masks[1] |= (t & MIPS_WATCHHI_MASK);
 if ((t & MIPS_WATCHHI_M) == 0)
  return;

 write_c0_watchlo2(MIPS_WATCHLO_IRW);
 back_to_back_c0_hazard();
 t = read_c0_watchlo2();
 write_c0_watchlo2(0);
 c->watch_reg_masks[2] = t & MIPS_WATCHLO_IRW;

 c->watch_reg_count = 3;
 c->watch_reg_use_cnt = 3;
 t = read_c0_watchhi2();
 write_c0_watchhi2(t | MIPS_WATCHHI_MASK);
 back_to_back_c0_hazard();
 t = read_c0_watchhi2();
 c->watch_reg_masks[2] |= (t & MIPS_WATCHHI_MASK);
 if ((t & MIPS_WATCHHI_M) == 0)
  return;

 write_c0_watchlo3(MIPS_WATCHLO_IRW);
 back_to_back_c0_hazard();
 t = read_c0_watchlo3();
 write_c0_watchlo3(0);
 c->watch_reg_masks[3] = t & MIPS_WATCHLO_IRW;

 c->watch_reg_count = 4;
 c->watch_reg_use_cnt = 4;
 t = read_c0_watchhi3();
 write_c0_watchhi3(t | MIPS_WATCHHI_MASK);
 back_to_back_c0_hazard();
 t = read_c0_watchhi3();
 c->watch_reg_masks[3] |= (t & MIPS_WATCHHI_MASK);
 if ((t & MIPS_WATCHHI_M) == 0)
  return;


 c->watch_reg_count = 5;
 t = read_c0_watchhi4();
 if ((t & MIPS_WATCHHI_M) == 0)
  return;

 c->watch_reg_count = 6;
 t = read_c0_watchhi5();
 if ((t & MIPS_WATCHHI_M) == 0)
  return;

 c->watch_reg_count = 7;
 t = read_c0_watchhi6();
 if ((t & MIPS_WATCHHI_M) == 0)
  return;

 c->watch_reg_count = 8;
}
