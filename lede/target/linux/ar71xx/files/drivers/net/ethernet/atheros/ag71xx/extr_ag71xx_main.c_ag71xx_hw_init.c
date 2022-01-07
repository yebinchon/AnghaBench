
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ag71xx_platform_data {int reset_bit; scalar_t__ is_ar724x; } ;
struct ag71xx {int dummy; } ;


 int AG71XX_REG_MAC_CFG1 ;
 int AR71XX_RESET_GE0_PHY ;
 int AR71XX_RESET_GE1_PHY ;
 int MAC_CFG1_SR ;
 int ag71xx_dma_reset (struct ag71xx*) ;
 struct ag71xx_platform_data* ag71xx_get_pdata (struct ag71xx*) ;
 int ag71xx_hw_setup (struct ag71xx*) ;
 int ag71xx_hw_stop (struct ag71xx*) ;
 int ag71xx_sb (struct ag71xx*,int ,int ) ;
 int ath79_device_reset_clear (int) ;
 int ath79_device_reset_set (int) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static void ag71xx_hw_init(struct ag71xx *ag)
{
 struct ag71xx_platform_data *pdata = ag71xx_get_pdata(ag);
 u32 reset_mask = pdata->reset_bit;

 ag71xx_hw_stop(ag);

 if (pdata->is_ar724x) {
  u32 reset_phy = reset_mask;

  reset_phy &= AR71XX_RESET_GE0_PHY | AR71XX_RESET_GE1_PHY;
  reset_mask &= ~(AR71XX_RESET_GE0_PHY | AR71XX_RESET_GE1_PHY);

  ath79_device_reset_set(reset_phy);
  msleep(50);
  ath79_device_reset_clear(reset_phy);
  msleep(200);
 }

 ag71xx_sb(ag, AG71XX_REG_MAC_CFG1, MAC_CFG1_SR);
 udelay(20);

 ath79_device_reset_set(reset_mask);
 msleep(100);
 ath79_device_reset_clear(reset_mask);
 msleep(200);

 ag71xx_hw_setup(ag);

 ag71xx_dma_reset(ag);
}
