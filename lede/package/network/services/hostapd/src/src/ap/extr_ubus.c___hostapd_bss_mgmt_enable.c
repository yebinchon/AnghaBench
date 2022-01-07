
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hostapd_data {int iface; } ;


 int __BSS_MGMT_EN_MAX ;
 int __hostapd_bss_mgmt_enable_f (struct hostapd_data*,int) ;
 int ieee802_11_update_beacons (int ) ;

__attribute__((used)) static void
__hostapd_bss_mgmt_enable(struct hostapd_data *hapd, uint32_t flags)
{
 bool update = 0;
 int i;

 for (i = 0; i < __BSS_MGMT_EN_MAX; i++) {
  if (!(flags & (1 << i)))
   continue;

  update |= __hostapd_bss_mgmt_enable_f(hapd, i);
 }

 if (update)
  ieee802_11_update_beacons(hapd->iface);
}
