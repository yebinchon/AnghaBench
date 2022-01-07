
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_set_ad_ctr (int,long long,long long) ;
 int do_set_ad_sump (int,long long,long long,long long) ;

int do_set_ad_ctr_sump (int ad_id, long long g_clicks, long long g_views, long long g_sump0, long long g_sump1, long long g_sump2) {
  return do_set_ad_ctr (ad_id, g_clicks, g_views) & do_set_ad_sump (ad_id, g_sump0, g_sump1, g_sump2);
}
