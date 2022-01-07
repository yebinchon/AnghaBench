
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targ_index_ads_directory_entry {int ad_id; } ;


 struct targ_index_ads_directory_entry* idx_stale_ad_dir ;
 int idx_stale_ads ;

struct targ_index_ads_directory_entry *lookup_ancient_ad (int ad_id) {
  int a = -1, b = idx_stale_ads, c;
  while (b - a > 1) {
    c = (a + b) >> 1;
    if (idx_stale_ad_dir[c].ad_id <= ad_id) {
      a = c;
    } else {
      b = c;
    }
  }
  if (a >= 0 && idx_stale_ad_dir[a].ad_id == ad_id) {
    return &idx_stale_ad_dir[a];
  } else {
    return 0;
  }
}
