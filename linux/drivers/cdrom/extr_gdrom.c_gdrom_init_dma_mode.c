
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int GDROM_DMA_ACCESS_CTRL_REG ;
 int GDROM_DMA_WAIT_REG ;
 int GDROM_ERROR_REG ;
 int GDROM_INTSEC_REG ;
 int GDROM_STATUSCOMMAND_REG ;
 int __raw_writeb (int,int ) ;
 int __raw_writel (int,int ) ;
 int gdrom_wait_busy_sleeps () ;
 int gdrom_wait_clrbusy () ;

__attribute__((used)) static int gdrom_init_dma_mode(void)
{
 __raw_writeb(0x13, GDROM_ERROR_REG);
 __raw_writeb(0x22, GDROM_INTSEC_REG);
 if (!gdrom_wait_clrbusy())
  return -EBUSY;
 __raw_writeb(0xEF, GDROM_STATUSCOMMAND_REG);
 if (!gdrom_wait_busy_sleeps())
  return -EBUSY;







 __raw_writel(0x8843407F, GDROM_DMA_ACCESS_CTRL_REG);
 __raw_writel(9, GDROM_DMA_WAIT_REG);
 return 0;
}
