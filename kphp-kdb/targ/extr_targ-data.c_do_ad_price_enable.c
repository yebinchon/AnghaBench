
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_targ_ad_price {int ad_price; } ;
struct advert {int price; int flags; } ;


 int ADF_ON ;
 int LEV_TARG_AD_ON ;
 int LEV_TARG_AD_PRICE ;
 int ad_enable (struct advert*,int ) ;
 int ad_is_ancient (int) ;
 struct lev_targ_ad_price* alloc_log_event (int ,int,int) ;
 int fprintf (int ,char*,int) ;
 struct advert* get_ad_f (int,int ) ;
 int load_ancient_ad (struct advert*) ;
 int set_ad_price (struct lev_targ_ad_price*) ;
 int stderr ;
 scalar_t__ verbosity ;

int do_ad_price_enable (int ad_id, int price) {
  struct advert *A = get_ad_f (ad_id, ad_is_ancient (ad_id));
  int res;
  if (!A) {
    if (verbosity > 0) {
      fprintf (stderr, "warning: enabling undefined ad %d\n", ad_id);
    }
    return 0;
  }
  res = load_ancient_ad (A);
  if (res < 0) {
    return res;
  }
  res = 0;
  if (price != 0 && A->price != price) {
    struct lev_targ_ad_price *E = alloc_log_event (LEV_TARG_AD_PRICE, 12, ad_id);
    E->ad_price = price;
    set_ad_price (E);
    res = 1;
  }
  if (!(A->flags & ADF_ON)) {
    alloc_log_event (LEV_TARG_AD_ON, 8, ad_id);
    ad_enable (A, 0);
    res |= 1;
  }
  return res;
}
