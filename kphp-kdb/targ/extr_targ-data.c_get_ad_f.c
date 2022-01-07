
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {int flags; int ad_id; double factor; int recent_views_limit; struct advert* hash_next; } ;


 int ADF_ANCIENT ;
 int ADF_NOTLOADED ;
 int AD_TABLE_SIZE ;
 struct advert** Ads ;
 int* AncientAdBitmap ;
 unsigned int MAX_ADS ;
 scalar_t__ ad_is_ancient (int) ;
 int ancient_ads_pending ;
 struct advert* get_ad (int) ;
 int max_ad_id ;
 int memset (struct advert*,int ,int) ;
 int tot_ad_versions ;
 int tot_ads ;
 int vkprintf (int,char*,int) ;
 struct advert* zmalloc (int) ;

struct advert *get_ad_f (int ad_id, int force) {
  struct advert *A;
  if ((unsigned) ad_id >= MAX_ADS || !ad_id) {
    return 0;
  }
  A = get_ad (ad_id);
  if (A || !force) {
    return A;
  }
  A = zmalloc (sizeof (struct advert));
  if (!A) {
    return A;
  }
  memset (A, 0, sizeof(*A));
  if (ad_id > max_ad_id) {
    max_ad_id = ad_id;
  }
  tot_ads++;
  if (ad_is_ancient (ad_id)) {
    AncientAdBitmap[ad_id >> 3] &= ~(1 << (ad_id & 7));
    A->flags = ADF_ANCIENT | ADF_NOTLOADED;
    ancient_ads_pending++;
  }
  vkprintf (4, "created ad id %d\n", ad_id);
  A->ad_id = ad_id;
  A->hash_next = Ads[ad_id & (AD_TABLE_SIZE - 1)];
  Ads[ad_id & (AD_TABLE_SIZE - 1)] = A;
  A->factor = 1.0;
  A->recent_views_limit = 0xffff;
  tot_ad_versions++;
  return A;
}
