
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BAST_CPLD_CTRL1_LRCDAC ;
 unsigned int BAST_CPLD_CTRL1_LRMASK ;
 int BAST_VA_CTRL1 ;
 unsigned int __raw_readb (int ) ;
 int __raw_writeb (unsigned int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void simtec_audio_startup_lrroute(void)
{
 unsigned int tmp;
 unsigned long flags;

 local_irq_save(flags);

 tmp = __raw_readb(BAST_VA_CTRL1);
 tmp &= ~BAST_CPLD_CTRL1_LRMASK;
 tmp |= BAST_CPLD_CTRL1_LRCDAC;
 __raw_writeb(tmp, BAST_VA_CTRL1);

 local_irq_restore(flags);
}
