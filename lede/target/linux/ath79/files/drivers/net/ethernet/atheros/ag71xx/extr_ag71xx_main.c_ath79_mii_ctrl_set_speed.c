
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ag71xx {int speed; int mii_base; } ;


 unsigned int AR71XX_MII_CTRL_SPEED_10 ;
 unsigned int AR71XX_MII_CTRL_SPEED_100 ;
 unsigned int AR71XX_MII_CTRL_SPEED_1000 ;
 unsigned int AR71XX_MII_CTRL_SPEED_MASK ;
 unsigned int AR71XX_MII_CTRL_SPEED_SHIFT ;
 int BUG () ;



 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

__attribute__((used)) static void ath79_mii_ctrl_set_speed(struct ag71xx *ag)
{
 unsigned int mii_speed;
 u32 t;

 if (!ag->mii_base)
  return;

 switch (ag->speed) {
 case 130:
  mii_speed = AR71XX_MII_CTRL_SPEED_10;
  break;
 case 129:
  mii_speed = AR71XX_MII_CTRL_SPEED_100;
  break;
 case 128:
  mii_speed = AR71XX_MII_CTRL_SPEED_1000;
  break;
 default:
  BUG();
 }

 t = __raw_readl(ag->mii_base);
 t &= ~(AR71XX_MII_CTRL_SPEED_MASK << AR71XX_MII_CTRL_SPEED_SHIFT);
 t |= mii_speed << AR71XX_MII_CTRL_SPEED_SHIFT;
 __raw_writel(t, ag->mii_base);
}
