
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct rio_mport {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dbell_regs; } ;
struct TYPE_3__ {int odmr; int oddatr; int oddpr; int odretcr; } ;


 TYPE_2__* dbell ;
 int fsl_rio_doorbell_lock ;
 int out_be32 (int *,int) ;
 int pr_debug (char*,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int fsl_rio_doorbell_send(struct rio_mport *mport,
    int index, u16 destid, u16 data)
{
 unsigned long flags;

 pr_debug("fsl_doorbell_send: index %d destid %4.4x data %4.4x\n",
   index, destid, data);

 spin_lock_irqsave(&fsl_rio_doorbell_lock, flags);




 out_be32(&dbell->dbell_regs->odmr, 0x00000000);
 out_be32(&dbell->dbell_regs->odretcr, 0x00000004);
 out_be32(&dbell->dbell_regs->oddpr, destid << 16);
 out_be32(&dbell->dbell_regs->oddatr, (index << 20) | data);
 out_be32(&dbell->dbell_regs->odmr, 0x00000001);

 spin_unlock_irqrestore(&fsl_rio_doorbell_lock, flags);

 return 0;
}
