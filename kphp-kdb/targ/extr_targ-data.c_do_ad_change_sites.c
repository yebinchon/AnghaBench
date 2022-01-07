
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int dummy; } ;
struct advert {int dummy; } ;


 scalar_t__ LEV_TARG_AD_SETSITEMASK ;
 int ad_change_sites (struct lev_generic*) ;
 int ad_is_ancient (int) ;
 struct lev_generic* alloc_log_event (scalar_t__,int,int) ;
 int fprintf (int ,char*,int,int) ;
 struct advert* get_ad_f (int,int ) ;
 int load_ancient_ad (struct advert*) ;
 int stderr ;
 scalar_t__ verbosity ;

int do_ad_change_sites (int ad_id, int ext_sites) {
 struct advert *A = get_ad_f (ad_id, ad_is_ancient (ad_id));

  if (verbosity > 0) {
    fprintf (stderr, "in do_ad_change_sites (%d, %d):\n", ad_id, ext_sites);
  }

  if (!A || (ext_sites & -0x100)) {
    return 0;
  }

  int res = load_ancient_ad (A);
  if (res < 0) {
    return res;
  }

  struct lev_generic *E = alloc_log_event (LEV_TARG_AD_SETSITEMASK + ext_sites, 8, ad_id);
  return ad_change_sites (E);
}
