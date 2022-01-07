
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct he_dev {int global_lock; } ;
struct atm_dev {int dummy; } ;


 scalar_t__ FRAMER ;
 struct he_dev* HE_DEV (struct atm_dev*) ;
 int HPRINTK (char*,unsigned char,unsigned long) ;
 int he_readl (struct he_dev*,scalar_t__) ;
 int he_writel (struct he_dev*,unsigned char,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
he_phy_put(struct atm_dev *atm_dev, unsigned char val, unsigned long addr)
{
 unsigned long flags;
 struct he_dev *he_dev = HE_DEV(atm_dev);

 HPRINTK("phy_put(val 0x%x, addr 0x%lx)\n", val, addr);

 spin_lock_irqsave(&he_dev->global_lock, flags);
 he_writel(he_dev, val, FRAMER + (addr*4));
 (void) he_readl(he_dev, FRAMER + (addr*4));
 spin_unlock_irqrestore(&he_dev->global_lock, flags);
}
