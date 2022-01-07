
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct diag210 {int dummy; } ;
struct TYPE_2__ {int (* diag210 ) (struct diag210*) ;} ;
typedef int DEFINE_SPINLOCK ;


 int DIAG_STAT_X210 ;
 struct diag210* __diag210_tmp_dma ;
 TYPE_1__ diag_dma_ops ;
 int diag_stat_inc (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct diag210*) ;

int diag210(struct diag210 *addr)
{
 static DEFINE_SPINLOCK(diag210_lock);
 unsigned long flags;
 int ccode;

 spin_lock_irqsave(&diag210_lock, flags);
 *__diag210_tmp_dma = *addr;

 diag_stat_inc(DIAG_STAT_X210);
 ccode = diag_dma_ops.diag210(__diag210_tmp_dma);

 *addr = *__diag210_tmp_dma;
 spin_unlock_irqrestore(&diag210_lock, flags);

 return ccode;
}
