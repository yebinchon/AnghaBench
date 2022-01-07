
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_targ_user_view {int user_id; } ;
struct advert {int flags; } ;


 int ADF_ANCIENT ;
 int LEV_TARG_USER_VIEW ;
 scalar_t__ ad_became_ancient (struct advert*) ;
 struct lev_targ_user_view* alloc_log_event (int ,int,int) ;
 int conv_user_id (int) ;
 int fprintf (int ,char*,int,...) ;
 struct advert* get_ad_f (int,int ) ;
 int register_user_view (struct lev_targ_user_view*) ;
 int stderr ;
 int verbosity ;

int do_register_user_view (int user_id, int ad_id) {
  struct advert *A = get_ad_f (ad_id, 0);
  int uid = conv_user_id (user_id);

  if (verbosity > 2) {
    fprintf (stderr, "user %d views ad %d\n", user_id, ad_id);
  }

  if (uid < 0) {
    if (verbosity > 0) {
      fprintf (stderr, "error: unknown user %d, view ignored\n", user_id);
    }
    return -1;
  }
  if (!A || (A->flags & ADF_ANCIENT) || ad_became_ancient (A)) {
    if (verbosity > 0) {
      fprintf (stderr, "error: unknown or ancient ad %d, view ignored\n", ad_id);
    }
    return -1;
  }

  struct lev_targ_user_view *E = alloc_log_event (LEV_TARG_USER_VIEW, 12, ad_id);
  E->user_id = user_id;

  return register_user_view (E);
}
