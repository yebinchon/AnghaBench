
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mips3264_watch_reg_state {unsigned int* watchhi; unsigned int* watchlo; } ;
struct TYPE_5__ {struct mips3264_watch_reg_state mips3264; } ;
struct TYPE_6__ {TYPE_1__ watch; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_7__ {int watch_reg_use_cnt; } ;


 int BUG () ;
 unsigned int MIPS_WATCHHI_IRW ;
 unsigned int MIPS_WATCHHI_MASK ;
 TYPE_4__* current ;
 TYPE_3__ current_cpu_data ;
 unsigned int read_c0_watchhi0 () ;
 unsigned int read_c0_watchhi1 () ;
 unsigned int read_c0_watchhi2 () ;
 unsigned int read_c0_watchhi3 () ;

void mips_read_watch_registers(void)
{
 struct mips3264_watch_reg_state *watches =
  &current->thread.watch.mips3264;
 unsigned int watchhi_mask = MIPS_WATCHHI_MASK | MIPS_WATCHHI_IRW;

 switch (current_cpu_data.watch_reg_use_cnt) {
 default:
  BUG();
 case 4:
  watches->watchhi[3] = (read_c0_watchhi3() & watchhi_mask);

 case 3:
  watches->watchhi[2] = (read_c0_watchhi2() & watchhi_mask);

 case 2:
  watches->watchhi[1] = (read_c0_watchhi1() & watchhi_mask);

 case 1:
  watches->watchhi[0] = (read_c0_watchhi0() & watchhi_mask);
 }
 if (current_cpu_data.watch_reg_use_cnt == 1 &&
     (watches->watchhi[0] & MIPS_WATCHHI_IRW) == 0) {





  watches->watchhi[0] |= (watches->watchlo[0] & MIPS_WATCHHI_IRW);
 }
 }
