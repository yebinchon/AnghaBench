
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u8 ;
struct hostapd_data {struct hostapd_bss_config* conf; } ;
struct hostapd_bss_config {int* radio_measurements; int bss_transition; } ;





 int WLAN_RRM_CAPS_BEACON_REPORT_ACTIVE ;
 int WLAN_RRM_CAPS_BEACON_REPORT_PASSIVE ;
 int WLAN_RRM_CAPS_BEACON_REPORT_TABLE ;
 int WLAN_RRM_CAPS_NEIGHBOR_REPORT ;
 int hostapd_neighbor_set_own_report (struct hostapd_data*) ;

__attribute__((used)) static bool
__hostapd_bss_mgmt_enable_f(struct hostapd_data *hapd, int flag)
{
 struct hostapd_bss_config *bss = hapd->conf;
 uint32_t flags;

 switch (flag) {
 case 128:
  if (bss->radio_measurements[0] &
      WLAN_RRM_CAPS_NEIGHBOR_REPORT)
   return 0;

  bss->radio_measurements[0] |=
   WLAN_RRM_CAPS_NEIGHBOR_REPORT;
  hostapd_neighbor_set_own_report(hapd);
  return 1;
 case 130:
  flags = WLAN_RRM_CAPS_BEACON_REPORT_PASSIVE |
   WLAN_RRM_CAPS_BEACON_REPORT_ACTIVE |
   WLAN_RRM_CAPS_BEACON_REPORT_TABLE;

  if (bss->radio_measurements[0] & flags == flags)
   return 0;

  bss->radio_measurements[0] |= (u8) flags;
  return 1;
 }
}
