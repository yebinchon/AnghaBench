
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_targ_target {size_t ad_query_len; scalar_t__ ad_id; int ad_price; int * ad_query; } ;
struct advert {scalar_t__ price; int flags; scalar_t__ query; } ;


 int ADF_ON ;
 size_t MAX_QUERY_STRING_LEN ;
 int ad_enable (struct advert*,scalar_t__) ;
 int adjust_ctr_counters (struct advert*) ;
 int assert (int) ;
 int change_ad_target (struct advert*) ;
 int compute_estimated_gain (struct advert*) ;
 scalar_t__ exact_strdup (int *,int) ;
 int exact_strfree (scalar_t__) ;
 int fprintf (int ,char*,scalar_t__,int) ;
 struct advert* get_ad_f (scalar_t__,int) ;
 int load_ancient_ad (struct advert*) ;
 int remove_queue_ad (struct advert*) ;
 int stderr ;
 scalar_t__ strcmp (scalar_t__,int *) ;
 scalar_t__ targeting_disabled ;
 int verbosity ;

__attribute__((used)) static int perform_targeting (struct lev_targ_target *E) {
  struct advert *A;
  assert (E->ad_query_len > 0 && !E->ad_query[E->ad_query_len]);
  assert (E->ad_query_len <= MAX_QUERY_STRING_LEN);
  if (E->ad_id <= 0 || targeting_disabled) {
    if (verbosity > 1) {
      fprintf (stderr, "store_targeting(): ad_id=%d, ad_price=%d\n", E->ad_id, E->ad_price);
    }
    return 15 + E->ad_query_len;
  }
  assert (E->ad_price != 0 && E->ad_id > 0);
  A = get_ad_f (E->ad_id, 1);

  if (!A) { return -1; }

  int res = load_ancient_ad (A);
  if (res < 0) {
    return res;
  }

  if (A->price != E->ad_price && E->ad_price != 0) {
    A->price = E->ad_price;
  }

  if (!A->query || strcmp (A->query, E->ad_query)) {
    remove_queue_ad (A);
    adjust_ctr_counters (A);
    if (!A->query) {
      exact_strfree (A->query);
    }
    A->query = exact_strdup (E->ad_query, E->ad_query_len);
    if (A->price) {
      change_ad_target (A);
    }
  } else if (!(A->flags & ADF_ON) && A->price) {
    ad_enable (A, A->price);
  }

  compute_estimated_gain (A);

  return 15 + E->ad_query_len;
}
