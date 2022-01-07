
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum bcsr_id { ____Placeholder_bcsr_id } bcsr_id ;
struct TYPE_2__ {int lock; int raddr; } ;


 int __raw_writew (unsigned short,int ) ;
 TYPE_1__* bcsr_regs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

void bcsr_write(enum bcsr_id reg, unsigned short val)
{
 unsigned long flags;

 spin_lock_irqsave(&bcsr_regs[reg].lock, flags);
 __raw_writew(val, bcsr_regs[reg].raddr);
 wmb();
 spin_unlock_irqrestore(&bcsr_regs[reg].lock, flags);
}
