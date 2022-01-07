
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ regs; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pvr_s {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_4__ {unsigned long* pvr; } ;


 unsigned int GDB_PVR ;
 TYPE_2__ pvr ;

void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *p)
{
 unsigned int i;
 unsigned long *pt_regb = (unsigned long *)(p->thread.regs);


 for (i = 0; i < (sizeof(struct pt_regs) / 4) - 1; i++)
  gdb_regs[i] = pt_regb[i];


 for (i = 0; i < sizeof(struct pvr_s)/4; i++)
  gdb_regs[GDB_PVR + i] = pvr.pvr[i];
}
