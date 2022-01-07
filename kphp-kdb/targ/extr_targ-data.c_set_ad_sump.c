
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_targ_ad_setsump {scalar_t__ type; scalar_t__ sump0; scalar_t__ sump1; scalar_t__ sump2; int ad_id; } ;
struct advert {scalar_t__ price; double g_sump0; double g_sump1; double g_sump2; } ;


 scalar_t__ LEV_TARG_AD_SETSUMP ;
 int assert (int) ;
 int compute_estimated_gain (struct advert*) ;
 struct advert* get_ad_f (int ,int ) ;
 scalar_t__ targeting_disabled ;

__attribute__((used)) static int set_ad_sump (struct lev_targ_ad_setsump *E) {
  if (targeting_disabled) {
    return 0;
  }
  struct advert *A = get_ad_f (E->ad_id, 0);
  assert (A && A->price > 0);
  assert (E->type == LEV_TARG_AD_SETSUMP);
  assert (E->sump0 >= 0 && E->sump1 >= 0 && E->sump2 >= 0);

  A->g_sump0 = (double) E->sump0 * (1.0 / (1LL << 32));
  A->g_sump1 = (double) E->sump1 * (1.0 / (1LL << 32));
  A->g_sump2 = (double) E->sump2 * (1.0 / (1LL << 32));

  compute_estimated_gain (A);

  return 1;
}
