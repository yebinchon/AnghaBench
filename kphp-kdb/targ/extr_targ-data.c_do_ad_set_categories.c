
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_targ_ad_setint {int value; } ;
struct advert {int category; int subcategory; } ;


 int LEV_TARG_AD_SETCATEGORIES ;
 int MAX_AD_CATEGORY ;
 int ad_is_ancient (int) ;
 int ad_set_categories (struct lev_targ_ad_setint*) ;
 struct lev_targ_ad_setint* alloc_log_event (int ,int,int) ;
 int fprintf (int ,char*,int,int,int) ;
 struct advert* get_ad_f (int,int ) ;
 int load_ancient_ad (struct advert*) ;
 int stderr ;
 scalar_t__ verbosity ;

int do_ad_set_categories (int ad_id, int category, int subcategory) {
  struct advert *A = get_ad_f (ad_id, ad_is_ancient (ad_id));

  if (verbosity > 0) {
    fprintf (stderr, "in do_ad_set_categories (%d, %d, %d):\n", ad_id, category, subcategory);
  }

  if (!A || category < 0 || category > MAX_AD_CATEGORY || subcategory < 0 || subcategory > MAX_AD_CATEGORY) {
    return 0;
  }

  int res = load_ancient_ad (A);
  if (res < 0) {
    return res;
  }

  if (A->category == category && A->subcategory == subcategory) {
    return 1;
  }

  struct lev_targ_ad_setint *E = alloc_log_event (LEV_TARG_AD_SETCATEGORIES, 12, ad_id);
  E->value = category | (subcategory << 16);

  return ad_set_categories (E);
}
