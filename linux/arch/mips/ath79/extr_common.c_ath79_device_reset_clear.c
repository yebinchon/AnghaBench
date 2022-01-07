
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AR71XX_RESET_REG_RESET_MODULE ;
 int AR724X_RESET_REG_RESET_MODULE ;
 int AR913X_RESET_REG_RESET_MODULE ;
 int AR933X_RESET_REG_RESET_MODULE ;
 int AR934X_RESET_REG_RESET_MODULE ;
 int BUG () ;
 int QCA953X_RESET_REG_RESET_MODULE ;
 int QCA955X_RESET_REG_RESET_MODULE ;
 int QCA956X_RESET_REG_RESET_MODULE ;
 int ath79_device_reset_lock ;
 int ath79_reset_rr (int) ;
 int ath79_reset_wr (int,int) ;
 scalar_t__ soc_is_ar71xx () ;
 scalar_t__ soc_is_ar724x () ;
 scalar_t__ soc_is_ar913x () ;
 scalar_t__ soc_is_ar933x () ;
 scalar_t__ soc_is_ar934x () ;
 scalar_t__ soc_is_qca953x () ;
 scalar_t__ soc_is_qca955x () ;
 scalar_t__ soc_is_qca956x () ;
 scalar_t__ soc_is_tp9343 () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ath79_device_reset_clear(u32 mask)
{
 unsigned long flags;
 u32 reg;
 u32 t;

 if (soc_is_ar71xx())
  reg = AR71XX_RESET_REG_RESET_MODULE;
 else if (soc_is_ar724x())
  reg = AR724X_RESET_REG_RESET_MODULE;
 else if (soc_is_ar913x())
  reg = AR913X_RESET_REG_RESET_MODULE;
 else if (soc_is_ar933x())
  reg = AR933X_RESET_REG_RESET_MODULE;
 else if (soc_is_ar934x())
  reg = AR934X_RESET_REG_RESET_MODULE;
 else if (soc_is_qca953x())
  reg = QCA953X_RESET_REG_RESET_MODULE;
 else if (soc_is_qca955x())
  reg = QCA955X_RESET_REG_RESET_MODULE;
 else if (soc_is_qca956x() || soc_is_tp9343())
  reg = QCA956X_RESET_REG_RESET_MODULE;
 else
  BUG();

 spin_lock_irqsave(&ath79_device_reset_lock, flags);
 t = ath79_reset_rr(reg);
 ath79_reset_wr(reg, t & ~mask);
 spin_unlock_irqrestore(&ath79_device_reset_lock, flags);
}
