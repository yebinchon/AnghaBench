
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AR71XX_ETH1_PLL_SHIFT ;
 int AR71XX_MII_REG_MII1_CTRL ;
 int AR71XX_PLL_REG_ETH1_INT_CLOCK ;
 int AR71XX_PLL_REG_SEC_CONFIG ;
 int ath79_get_eth_pll (int,int) ;
 int ath79_mii_ctrl_set_speed (int ,int) ;
 int ath79_set_pll (int ,int ,int ,int ) ;

__attribute__((used)) static void ath79_set_speed_ge1(int speed)
{
 u32 val = ath79_get_eth_pll(1, speed);

 ath79_set_pll(AR71XX_PLL_REG_SEC_CONFIG, AR71XX_PLL_REG_ETH1_INT_CLOCK,
    val, AR71XX_ETH1_PLL_SHIFT);
 ath79_mii_ctrl_set_speed(AR71XX_MII_REG_MII1_CTRL, speed);
}
