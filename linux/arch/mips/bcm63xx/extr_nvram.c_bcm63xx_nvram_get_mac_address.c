
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int mac_addr_count; int mac_addr_base; } ;


 int ENODEV ;
 int ETH_ALEN ;
 int mac_addr_used ;
 int memcpy (scalar_t__*,int ,int) ;
 TYPE_1__ nvram ;
 int pr_err (char*) ;

int bcm63xx_nvram_get_mac_address(u8 *mac)
{
 u8 *oui;
 int count;

 if (mac_addr_used >= nvram.mac_addr_count) {
  pr_err("not enough mac addresses\n");
  return -ENODEV;
 }

 memcpy(mac, nvram.mac_addr_base, ETH_ALEN);
 oui = mac + ETH_ALEN/2 - 1;
 count = mac_addr_used;

 while (count--) {
  u8 *p = mac + ETH_ALEN - 1;

  do {
   (*p)++;
   if (*p != 0)
    break;
   p--;
  } while (p != oui);

  if (p == oui) {
   pr_err("unable to fetch mac address\n");
   return -ENODEV;
  }
 }

 mac_addr_used++;
 return 0;
}
