
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct tulip_platform_data {int mac; } ;


 int ADM8668_SMEM1_BASE ;
 scalar_t__ ADM8868_UBOOT_ENV ;
 scalar_t__ ADM8868_UBOOT_LAN_MAC ;
 scalar_t__ ADM8868_UBOOT_WAN_MAC ;
 scalar_t__ KSEG1ADDR (int ) ;
 struct tulip_platform_data eth0_pdata ;
 struct tulip_platform_data eth1_pdata ;
 int memcpy (int ,int *,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void adm8668_fetch_mac(int unit)
{
 u8 *mac;
 u32 offset;
 struct tulip_platform_data *pdata;

 switch (unit) {
 case -1:
 case 0:
  offset = ADM8868_UBOOT_LAN_MAC;
  pdata = &eth0_pdata;
  break;
 case 1:
  offset = ADM8868_UBOOT_WAN_MAC;
  pdata = &eth1_pdata;
  break;
 default:
  pr_err("unsupported ethernet unit: %d\n", unit);
  return;
 }

 mac = (u8 *)(KSEG1ADDR(ADM8668_SMEM1_BASE) + ADM8868_UBOOT_ENV + offset);

 memcpy(pdata->mac, mac, sizeof(pdata->mac));
}
