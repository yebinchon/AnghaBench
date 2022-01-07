
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int dummy; } ;
struct advert {int recent_views_limit; } ;


 scalar_t__ LEV_TARG_AD_LIMIT_RECENT_VIEWS ;
 int ad_is_ancient (int) ;
 int ad_limit_recent_views (struct lev_generic*) ;
 struct lev_generic* alloc_log_event (scalar_t__,int,int) ;
 int fprintf (int ,char*,int,int) ;
 struct advert* get_ad_f (int,int ) ;
 int load_ancient_ad (struct advert*) ;
 int stderr ;
 scalar_t__ verbosity ;

int do_ad_limit_recent_views (int ad_id, int views) {
  struct advert *A = get_ad_f (ad_id, ad_is_ancient (ad_id));

  if (verbosity > 0) {
    fprintf (stderr, "in do_ad_limit_recent_views (%d, %d):\n", ad_id, views);
  }

  if (!A || views < 0) {
    return 0;
  }

  if (views >= 0x10000) {
    views = 0xffff;
  }

  int res = load_ancient_ad (A);
  if (res < 0) {
    return res;
  }

  if (A->recent_views_limit == views) {
    return 1;
  }

  struct lev_generic *E = alloc_log_event (LEV_TARG_AD_LIMIT_RECENT_VIEWS + views, 8, ad_id);
  return ad_limit_recent_views (E);
}
