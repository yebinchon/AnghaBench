
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targ_index_ads_directory_entry {int ad_id; int ad_info_offset; } ;
struct advert {int flags; int ad_id; } ;


 int ADF_ANCIENT ;
 int ADF_NEWANCIENT ;
 int MAX_ADS ;
 struct targ_index_ads_directory_entry* NewFreshAdsDir ;
 int assert (int) ;
 struct advert* get_ad (int) ;
 struct targ_index_ads_directory_entry* malloc (int) ;
 int new_fresh_addir_size ;
 int new_fresh_ads ;

void init_new_fresh_ads_directory (void) {
  int i;
  new_fresh_addir_size = sizeof (struct targ_index_ads_directory_entry) * (new_fresh_ads + 1);
  struct targ_index_ads_directory_entry *p = NewFreshAdsDir = malloc (new_fresh_addir_size);
  for (i = 0; i < MAX_ADS; i++) {
    struct advert *A = get_ad (i);
    if (A && !(A->flags & (ADF_ANCIENT | ADF_NEWANCIENT))) {
      assert (p - NewFreshAdsDir < new_fresh_ads);
      p->ad_id = A->ad_id;
      p->ad_info_offset = -1;
      ++p;
    }
  }
  assert (p - NewFreshAdsDir == new_fresh_ads);
  p->ad_id = 0x7fffffff;
  p->ad_info_offset = -1;
}
