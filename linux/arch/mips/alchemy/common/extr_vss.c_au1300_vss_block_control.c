
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALCHEMY_CPU_AU1300 ;
 int __disable_block (int) ;
 int __enable_block (int) ;
 scalar_t__ alchemy_get_cputype () ;
 int au1300_vss_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void au1300_vss_block_control(int block, int enable)
{
 unsigned long flags;

 if (alchemy_get_cputype() != ALCHEMY_CPU_AU1300)
  return;


 spin_lock_irqsave(&au1300_vss_lock, flags);
 if (enable)
  __enable_block(block);
 else
  __disable_block(block);
 spin_unlock_irqrestore(&au1300_vss_lock, flags);
}
