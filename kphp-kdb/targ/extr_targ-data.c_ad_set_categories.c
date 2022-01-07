
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_targ_ad_setint {int value; int ad_id; } ;
struct advert {short category; short subcategory; } ;


 short MAX_AD_CATEGORY ;
 int ad_is_ancient (int ) ;
 int assert (int) ;
 struct advert* get_ad_f (int ,int ) ;
 scalar_t__ load_ancient_ad (struct advert*) ;

__attribute__((used)) static int ad_set_categories (struct lev_targ_ad_setint *E) {
  short category = E->value & 0xffff, subcategory = E->value >> 16;
  assert (category >= 0 && category <= MAX_AD_CATEGORY && subcategory >= 0 && subcategory <= MAX_AD_CATEGORY);
  struct advert *A = get_ad_f (E->ad_id, ad_is_ancient (E->ad_id));
  if (!A) {
    return -1;
  }

  assert (load_ancient_ad (A) >= 0);

  A->category = category;
  A->subcategory = subcategory;

  return 1;
}
