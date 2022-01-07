
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * fd_stdout; } ;
struct TYPE_4__ {int (* v2_dev_write ) (int ,char const*,int) ;} ;
struct TYPE_6__ {TYPE_2__ pv_v2bootargs; TYPE_1__ pv_v2devops; int (* pv_nbputchar ) (char const) ;} ;





 int prom_lock ;
 int prom_vers ;
 int restore_current () ;
 TYPE_3__* romvec ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (char const) ;
 int stub2 (int ,char const*,int) ;

__attribute__((used)) static int prom_nbputchar(const char *buf)
{
 unsigned long flags;
 int i = -1;

 spin_lock_irqsave(&prom_lock, flags);
 switch(prom_vers) {
 case 130:
  if ((*(romvec->pv_nbputchar))(*buf))
   i = 1;
  break;
 case 129:
 case 128:
  if ((*(romvec->pv_v2devops).v2_dev_write)(*romvec->pv_v2bootargs.fd_stdout,
         buf, 0x1) == 1)
   i = 1;
  break;
 default:
  break;
 }
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);
 return i;
}
