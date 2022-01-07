
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int reg31; int cp0_status; int reg30; int reg29; int reg23; int reg22; int reg21; int reg20; int reg19; int reg18; int reg17; int reg16; } ;
struct task_struct {TYPE_1__ thread; } ;



void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *p)
{
 int reg;



 u64 *ptr = (u64 *)gdb_regs;


 for (reg = 0; reg < 16; reg++)
  *(ptr++) = 0;


 *(ptr++) = p->thread.reg16;
 *(ptr++) = p->thread.reg17;
 *(ptr++) = p->thread.reg18;
 *(ptr++) = p->thread.reg19;
 *(ptr++) = p->thread.reg20;
 *(ptr++) = p->thread.reg21;
 *(ptr++) = p->thread.reg22;
 *(ptr++) = p->thread.reg23;

 for (reg = 24; reg < 28; reg++)
  *(ptr++) = 0;


 *(ptr++) = (long)p;
 *(ptr++) = p->thread.reg29;
 *(ptr++) = p->thread.reg30;
 *(ptr++) = p->thread.reg31;

 *(ptr++) = p->thread.cp0_status;


 *(ptr++) = 0;
 *(ptr++) = 0;






 *(ptr++) = 0;
 *(ptr++) = 0;





 *(ptr++) = p->thread.reg31;
}
