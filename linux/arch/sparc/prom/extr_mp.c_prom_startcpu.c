
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linux_prom_registers {int dummy; } ;
struct TYPE_2__ {int (* v3_cpustart ) (int,int,int,char*) ;} ;





 int prom_lock ;
 int prom_vers ;
 int restore_current () ;
 TYPE_1__* romvec ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int,int,int,char*) ;

int
prom_startcpu(int cpunode, struct linux_prom_registers *ctable_reg, int ctx, char *pc)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&prom_lock, flags);
 switch(prom_vers) {
 case 130:
 case 129:
 default:
  ret = -1;
  break;
 case 128:
  ret = (*(romvec->v3_cpustart))(cpunode, (int) ctable_reg, ctx, pc);
  break;
 }
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);

 return ret;
}
