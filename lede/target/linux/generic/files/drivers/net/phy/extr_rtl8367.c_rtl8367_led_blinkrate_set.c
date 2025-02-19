
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct rtl8366_smi {int dummy; } ;


 int REG_RMW (struct rtl8366_smi*,int ,unsigned int,unsigned int) ;
 unsigned int RTL8367_LED_MODE_RATE_M ;
 unsigned int RTL8367_LED_MODE_RATE_S ;
 int RTL8367_LED_MODE_REG ;

__attribute__((used)) static int rtl8367_led_blinkrate_set(struct rtl8366_smi *smi, unsigned int rate)
{
 u16 mask;
 u16 set;
 int err;

 mask = RTL8367_LED_MODE_RATE_M << RTL8367_LED_MODE_RATE_S;
 set = (rate & RTL8367_LED_MODE_RATE_M) << RTL8367_LED_MODE_RATE_S;
 REG_RMW(smi, RTL8367_LED_MODE_REG, mask, set);

 return 0;
}
