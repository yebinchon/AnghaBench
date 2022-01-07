
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {int ad_id; struct advert* hash_next; } ;


 int AD_TABLE_SIZE ;
 struct advert** Ads ;

__attribute__((used)) static inline struct advert *get_ad (int ad_id) {
  struct advert *A;
  for (A = Ads[ad_id & (AD_TABLE_SIZE - 1)]; A && A->ad_id != ad_id; A = A->hash_next);
  return A;
}
