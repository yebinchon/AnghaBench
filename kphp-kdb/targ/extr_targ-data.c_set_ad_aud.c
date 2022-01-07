
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_targ_ad_setaud {scalar_t__ aud; int ad_id; } ;
struct advert {int flags; scalar_t__ price; scalar_t__ ext_users; } ;


 int ADF_ANCIENT ;
 scalar_t__ MAX_AD_AUD ;
 int assert (int) ;
 int compute_estimated_gain (struct advert*) ;
 struct advert* get_ad_f (int ,int ) ;
 scalar_t__ targeting_disabled ;

__attribute__((used)) static int set_ad_aud (struct lev_targ_ad_setaud *E) {
  if (targeting_disabled) {
    return 0;
  }
  struct advert *A = get_ad_f (E->ad_id, 0);
  assert (A && !(A->flags & ADF_ANCIENT) && E->aud > 0 && E->aud < MAX_AD_AUD && A->price > 0);
  A->ext_users = E->aud;
  compute_estimated_gain (A);
  return 1;
}
