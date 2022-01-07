
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mips3264_watch_reg_state {unsigned int* watchhi; int * watchlo; } ;
struct TYPE_4__ {struct mips3264_watch_reg_state mips3264; } ;
struct TYPE_5__ {TYPE_1__ watch; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_6__ {int watch_reg_use_cnt; } ;


 int BUG () ;
 unsigned int MIPS_WATCHHI_G ;
 unsigned int MIPS_WATCHHI_IRW ;
 TYPE_3__ current_cpu_data ;
 int write_c0_watchhi0 (unsigned int) ;
 int write_c0_watchhi1 (unsigned int) ;
 int write_c0_watchhi2 (unsigned int) ;
 int write_c0_watchhi3 (unsigned int) ;
 int write_c0_watchlo0 (int ) ;
 int write_c0_watchlo1 (int ) ;
 int write_c0_watchlo2 (int ) ;
 int write_c0_watchlo3 (int ) ;

void mips_install_watch_registers(struct task_struct *t)
{
 struct mips3264_watch_reg_state *watches = &t->thread.watch.mips3264;
 unsigned int watchhi = MIPS_WATCHHI_G |
          MIPS_WATCHHI_IRW;

 switch (current_cpu_data.watch_reg_use_cnt) {
 default:
  BUG();
 case 4:
  write_c0_watchlo3(watches->watchlo[3]);
  write_c0_watchhi3(watchhi | watches->watchhi[3]);

 case 3:
  write_c0_watchlo2(watches->watchlo[2]);
  write_c0_watchhi2(watchhi | watches->watchhi[2]);

 case 2:
  write_c0_watchlo1(watches->watchlo[1]);
  write_c0_watchhi1(watchhi | watches->watchhi[1]);

 case 1:
  write_c0_watchlo0(watches->watchlo[0]);
  write_c0_watchhi0(watchhi | watches->watchhi[0]);
 }
}
