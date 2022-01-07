
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_targ_ad_price {scalar_t__ ad_price; int ad_id; } ;
struct advert {scalar_t__ price; } ;


 int ad_is_ancient (int ) ;
 int compute_estimated_gain (struct advert*) ;
 struct advert* get_ad_f (int ,int ) ;
 int load_ancient_ad (struct advert*) ;

__attribute__((used)) static int set_ad_price (struct lev_targ_ad_price *E) {
  if (!E->ad_price) {
    return 0;
  }
  struct advert *A = get_ad_f (E->ad_id, ad_is_ancient (E->ad_id));
  if (!A) {
    return 0;
  }

  int res = load_ancient_ad (A);
  if (res < 0) {
    return res;
  }

  A->price = E->ad_price;
  compute_estimated_gain (A);
  return 1;
}
