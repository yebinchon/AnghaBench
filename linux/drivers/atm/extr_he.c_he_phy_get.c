
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct he_dev {int global_lock; } ;
struct atm_dev {int dummy; } ;


 scalar_t__ FRAMER ;
 struct he_dev* HE_DEV (struct atm_dev*) ;
 int HPRINTK (char*,unsigned long,unsigned int) ;
 unsigned int he_readl (struct he_dev*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char
he_phy_get(struct atm_dev *atm_dev, unsigned long addr)
{
 unsigned long flags;
 struct he_dev *he_dev = HE_DEV(atm_dev);
 unsigned reg;

 spin_lock_irqsave(&he_dev->global_lock, flags);
 reg = he_readl(he_dev, FRAMER + (addr*4));
 spin_unlock_irqrestore(&he_dev->global_lock, flags);

 HPRINTK("phy_get(addr 0x%lx) =0x%x\n", addr, reg);
 return reg;
}
