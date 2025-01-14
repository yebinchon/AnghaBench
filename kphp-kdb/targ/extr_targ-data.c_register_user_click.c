
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int clicked_ads; void* inactive_ads; void* active_ads; } ;
typedef TYPE_3__ user_t ;
typedef scalar_t__ treeref_t ;
struct lev_targ_click_ext {scalar_t__ type; int ad_id; int price; int user_id; } ;
struct advert {int flags; int price; double l_sump0; double g_sump0; double l_sump1; double l_sump2; double g_sump1; double g_sump2; int click_money; int g_clicked; int l_clicked; int l_clicked_old; } ;
struct TYPE_12__ {TYPE_2__* g; TYPE_1__* l; } ;
struct TYPE_11__ {int x; int z; } ;
struct TYPE_9__ {int views; scalar_t__ clicks; } ;
struct TYPE_8__ {int clicks; } ;


 int ADF_ANCIENT ;
 int ADF_NEWVIEWS ;
 int ADF_ON ;
 int AdSpace ;
 TYPE_7__ AdStats ;
 scalar_t__ LEV_TARG_CLICK ;
 scalar_t__ LEV_TARG_CLICK_EXT ;
 int MAX_ADS ;
 int MAX_AD_VIEWS ;
 int MONEY_SCALE ;
 TYPE_6__* TNODE (int ,scalar_t__) ;
 int account_user_online (TYPE_3__*) ;
 int active_ad_nodes ;
 int ad_is_ancient (int) ;
 int assert (int) ;
 int clicked_ad_nodes ;
 int compute_estimated_gain (struct advert*) ;
 struct advert* get_ad (int) ;
 struct advert* get_ad_f (int,int) ;
 TYPE_3__* get_user (int ) ;
 int inactive_ad_nodes ;
 int intree_insert (int ,int ,scalar_t__) ;
 scalar_t__ intree_lookup (int ,int ,int) ;
 void* intree_remove (int ,void*,int,scalar_t__*) ;
 scalar_t__ likely (int) ;
 int load_ancient_ad (struct advert*) ;
 scalar_t__ new_intree_node (int ) ;
 scalar_t__ targeting_disabled ;
 int tot_click_money ;
 int tot_clicks ;
 int total_sump0 ;
 double total_sump1 ;
 double total_sump2 ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int register_user_click (struct lev_targ_click_ext *E) {
  assert (E->type == LEV_TARG_CLICK || E->type == LEV_TARG_CLICK_EXT);
  if (targeting_disabled) {
    return 0;
  }
  user_t *U = get_user (E->user_id);

  account_user_online (U);

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

  treeref_t RN;
  U->active_ads = intree_remove (AdSpace, U->active_ads, ad_id, &RN);

  if (RN) {

    assert ((A->flags & (ADF_ON | ADF_ANCIENT)) == ADF_ON);
    --active_ad_nodes;
  } else {

    U->inactive_ads = intree_remove (AdSpace, U->inactive_ads, ad_id, &RN);
    if (RN) {
      --inactive_ad_nodes;
      assert (!(A->flags & ADF_ANCIENT));
    } else {
      RN = new_intree_node (AdSpace);
      TNODE (AdSpace, RN)->x = ad_id;
      TNODE (AdSpace, RN)->z = 0;
    }
  }

  int cur_views = TNODE (AdSpace, RN)->z;
  if (cur_views <= 0) {
    assert (!cur_views);
  }

  int price = (E->type == LEV_TARG_CLICK_EXT ? E->price : A->price);
  if ((price ^ A->price) < 0) {
    price = 0;
  }
  assert (A->price);

  if (!price) {
    TNODE (AdSpace, RN)->z = ~cur_views;
  }



  U->clicked_ads = intree_insert (AdSpace, U->clicked_ads, RN);
  ++clicked_ad_nodes;

  if (!price) {
    return 0;
  }

  if ((A->flags & ADF_ON) || price < 0) {


    A->l_clicked_old++;
    A->l_clicked++;

    A->g_clicked++;
    A->l_sump0 += 1.0;
    A->g_sump0 += 1.0;

    if (cur_views >= MAX_AD_VIEWS) {
      cur_views = MAX_AD_VIEWS - 1;
    }
    if (unlikely (!AdStats.g[cur_views].views)) {
      cur_views = 0;
    }
    if (likely (AdStats.g[cur_views].views)) {
      double p = (double) AdStats.g[cur_views].clicks / AdStats.g[cur_views].views;
      if (likely (p <= A->l_sump1) && likely (p*p <= A->l_sump2)) {
 A->l_sump1 -= p;
 A->g_sump1 -= p;
 A->l_sump2 -= p*p;
 A->g_sump2 -= p*p;
 if (price > 0 && (A->flags & ADF_NEWVIEWS)) {
   total_sump0++;
   total_sump1 -= p;
   total_sump2 -= p*p;
 }
      } else {
 A->g_sump1 -= A->l_sump1;
 A->g_sump2 -= A->l_sump2;
 if (price > 0 && (A->flags & ADF_NEWVIEWS)) {
   total_sump0++;
   total_sump1 -= A->l_sump1;
   total_sump2 -= A->l_sump2;
 }
 A->l_sump1 = 0;
 A->l_sump2 = 0;
      }
    }

    if (price > 0) {
      A->click_money += price * MONEY_SCALE;
      tot_click_money += price * MONEY_SCALE;



      if (cur_views > 0 && (A->flags & ADF_NEWVIEWS)) {
 ++AdStats.l[0].clicks;
 ++AdStats.g[0].clicks;
 if (cur_views >= MAX_AD_VIEWS) {
   cur_views = MAX_AD_VIEWS - 1;
 }
 ++AdStats.l[cur_views].clicks;
 ++AdStats.g[cur_views].clicks;
      }
    }
    compute_estimated_gain (A);
    tot_clicks++;
    return 1;
  }

  return 0;
}
