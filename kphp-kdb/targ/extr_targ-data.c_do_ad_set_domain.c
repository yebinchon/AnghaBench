
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_targ_ad_setint {int value; } ;
struct advert {int domain; } ;


 int LEV_TARG_AD_SETDOMAIN ;
 int MAX_AD_DOMAIN ;
 int ad_is_ancient (int) ;
 int ad_set_domain (struct lev_targ_ad_setint*) ;
 struct lev_targ_ad_setint* alloc_log_event (int ,int,int) ;
 int fprintf (int ,char*,int,int) ;
 struct advert* get_ad_f (int,int ) ;
 int load_ancient_ad (struct advert*) ;
 int stderr ;
 scalar_t__ verbosity ;

int do_ad_set_domain (int ad_id, int domain) {
  struct advert *A = get_ad_f (ad_id, ad_is_ancient (ad_id));

  if (verbosity > 0) {
    fprintf (stderr, "in do_ad_set_domain (%d, %d):\n", ad_id, domain);
  }

  if (!A || domain < 0 || domain > MAX_AD_DOMAIN) {
    return 0;
  }

  int res = load_ancient_ad (A);
  if (res < 0) {
    return res;
  }

  if (A->domain == domain) {
    return 1;
  }

  struct lev_targ_ad_setint *E = alloc_log_event (LEV_TARG_AD_SETDOMAIN, 12, ad_id);
  E->value = domain;

  return ad_set_domain (E);
}
