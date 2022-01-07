
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int dummy; } ;
struct advert {scalar_t__ price; } ;


 scalar_t__ LEV_TARG_AD_LIMIT_USER_VIEWS ;
 int ad_is_ancient (int) ;
 int ad_limit_user_views (struct lev_generic*) ;
 struct lev_generic* alloc_log_event (scalar_t__,int,int) ;
 int fprintf (int ,char*,int,int) ;
 struct advert* get_ad_f (int,int ) ;
 int load_ancient_ad (struct advert*) ;
 int stderr ;
 scalar_t__ verbosity ;

int do_ad_limit_user_views (int ad_id, int views) {
  struct advert *A = get_ad_f (ad_id, ad_is_ancient (ad_id));

  if (verbosity > 0) {
    fprintf (stderr, "in do_ad_limit_user_views (%d, %d):\n", ad_id, views);
  }

  if (!A || (views && views != 100)) {
    return 0;
  }

  int res = load_ancient_ad (A);
  if (res < 0) {
    return res;
  }

  if (A->price >= 0) {
    return 0;
  }

  struct lev_generic *E = alloc_log_event (LEV_TARG_AD_LIMIT_USER_VIEWS + views, 8, ad_id);
  return ad_limit_user_views (E);
}
