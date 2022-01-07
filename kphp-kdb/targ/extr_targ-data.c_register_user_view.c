
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int inactive_ads; int active_ads; int clicked_ads; } ;
typedef TYPE_3__ user_t ;
typedef scalar_t__ treeref_t ;
struct lev_targ_user_view {scalar_t__ type; int ad_id; int user_id; } ;
struct advert {double l_sump1; double g_sump1; double l_sump2; double g_sump2; scalar_t__ price; int flags; } ;
struct TYPE_12__ {TYPE_2__* g; TYPE_1__* l; } ;
struct TYPE_11__ {int z; int x; } ;
struct TYPE_9__ {double views; scalar_t__ clicks; } ;
struct TYPE_8__ {int views; } ;


 int ADF_ANYVIEWS ;
 int ADF_NEWVIEWS ;
 int AdSpace ;
 TYPE_7__ AdStats ;
 scalar_t__ LEV_TARG_USER_VIEW ;
 int MAX_ADS ;
 int MAX_AD_VIEWS ;
 TYPE_6__* TNODE (int ,scalar_t__) ;
 int account_user_online (TYPE_3__*) ;
 int ad_is_ancient (int) ;
 int assert (int) ;
 int compute_ad_lambda (struct advert*) ;
 struct advert* get_ad (int) ;
 struct advert* get_ad_f (int,int) ;
 TYPE_3__* get_user (int ) ;
 int inactive_ad_nodes ;
 int incr_ad_views (int,int,int) ;
 int intree_insert (int ,int ,scalar_t__) ;
 scalar_t__ intree_lookup (int ,int ,int) ;
 scalar_t__ likely (double) ;
 int load_ancient_ad (struct advert*) ;
 scalar_t__ new_intree_node (int ) ;
 int register_one_view (struct advert*,int ) ;
 scalar_t__ targeting_disabled ;
 double total_sump1 ;
 double total_sump2 ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int register_user_view (struct lev_targ_user_view *E) {
  assert (E->type == LEV_TARG_USER_VIEW);
  user_t *U = get_user (E->user_id);

  account_user_online (U);

  if (targeting_disabled) {
    return 0;
  }

  int ad_id = E->ad_id;
  if (!U || ad_id <= 0 || ad_id >= MAX_ADS) {
    return -1;
  }

  struct advert *A = get_ad (ad_id);
  if (!A) {
    if (!ad_is_ancient (ad_id)) {
      return -1;
    }
    A = get_ad_f (ad_id, 1);
  }

  if (intree_lookup (AdSpace, U->clicked_ads, ad_id)) {

    return 0;
  }


  int res = load_ancient_ad (A);
  if (res < 0) {
    return res;
  }

  int cur_views;
  treeref_t N = intree_lookup (AdSpace, U->active_ads, ad_id);
  if (N) {
    cur_views = ++TNODE (AdSpace, N)->z;
  } else {
    N = intree_lookup (AdSpace, U->inactive_ads, ad_id);
    if (N) {
      cur_views = ++TNODE (AdSpace, N)->z;
    } else {
      N = new_intree_node (AdSpace);
      TNODE (AdSpace, N)->x = ad_id;
      cur_views = TNODE (AdSpace, N)->z = 1;
      U->inactive_ads = intree_insert (AdSpace, U->inactive_ads, N);
      ++inactive_ad_nodes;
    }
  }

  incr_ad_views (ad_id, 1, 1);


  if (cur_views >= MAX_AD_VIEWS) {
    cur_views = MAX_AD_VIEWS - 1;
  }

  long i = cur_views;
  if (unlikely (!AdStats.g[i].views)) {
    i = 0;
  }
  if (likely (AdStats.g[i].views)) {
    double p = (double) AdStats.g[i].clicks / AdStats.g[i].views;
    A->l_sump1 += p;
    A->g_sump1 += p;
    A->l_sump2 += p*p;
    A->g_sump2 += p*p;
    if (A->price > 0 && (A->flags & ADF_NEWVIEWS)) {
      total_sump1 += p;
      total_sump2 += p*p;
    }
    compute_ad_lambda (A);
  }

  if (!(A->flags & ADF_ANYVIEWS)) {
    A->flags |= ADF_NEWVIEWS;
  }
  if ((A->flags & ADF_NEWVIEWS) && A->price > 0) {
    ++AdStats.l[0].views;
    ++AdStats.g[0].views;
    assert (cur_views > 0);
    ++AdStats.l[cur_views].views;
    ++AdStats.g[cur_views].views;
  }

  register_one_view (A, E->user_id);

  return 1;
}
