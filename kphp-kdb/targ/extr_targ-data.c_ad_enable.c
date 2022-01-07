
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {int flags; scalar_t__ disabled_since; int price; scalar_t__ userlist_computed_at; int ad_id; int users; int user_list; } ;


 int ADF_ANCIENT ;
 int ADF_DELAYED ;
 int ADF_ON ;
 scalar_t__ AD_ANCIENT_DELAY ;
 scalar_t__ AD_RECOMPUTE_INTERVAL ;
 int activate_ad (struct advert*) ;
 int active_ads ;
 int apply_periodic_ad_state (struct advert*) ;
 int assert (int) ;
 int change_ad_target (struct advert*) ;
 int compute_ad_user_list (struct advert*) ;
 int compute_estimated_gain (struct advert*) ;
 int delay_targeting ;
 int fprintf (int ,char*,int,int) ;
 int load_ancient_ad (struct advert*) ;
 scalar_t__ log_last_ts ;
 int remove_queue_ad (struct advert*) ;
 int stderr ;
 int verbosity ;

__attribute__((used)) static int ad_enable (struct advert *A, int price) {
  if (!A) {
    return 0;
  }
  if (A->flags & ADF_ANCIENT) {
    int res = load_ancient_ad (A);
    if (res < 0) {
      return res;
    }
    assert (A->disabled_since <= log_last_ts - AD_ANCIENT_DELAY);
  }

  if (price) {
    A->price = price;
  }

  assert (A->price);

  if (A->flags & ADF_ON) {
    if (A->userlist_computed_at <= log_last_ts - AD_RECOMPUTE_INTERVAL) {
      change_ad_target (A);
    } else {
      compute_estimated_gain (A);
    }
    return 0;
  }

  if (!A->user_list || A->disabled_since <= log_last_ts - AD_ANCIENT_DELAY || A->userlist_computed_at <= log_last_ts - AD_RECOMPUTE_INTERVAL) {
    compute_ad_user_list (A);
  }

  remove_queue_ad (A);
  A->flags |= ADF_ON;
  active_ads++;

  if (!delay_targeting) {
    activate_ad (A);
  } else {
    A->flags |= ADF_DELAYED;
  }

  apply_periodic_ad_state (A);
  compute_estimated_gain (A);

  if (verbosity > 2) {
    fprintf (stderr, "enabled previously disabled ad #%d: %d users\n", A->ad_id, A->users);
  }

  return 1;
}
