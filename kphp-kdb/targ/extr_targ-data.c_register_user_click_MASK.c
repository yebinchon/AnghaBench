#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  clicked_ads; void* inactive_ads; void* active_ads; } ;
typedef  TYPE_3__ user_t ;
typedef  scalar_t__ treeref_t ;
struct lev_targ_click_ext {scalar_t__ type; int ad_id; int price; int /*<<< orphan*/  user_id; } ;
struct advert {int flags; int price; double l_sump0; double g_sump0; double l_sump1; double l_sump2; double g_sump1; double g_sump2; int click_money; int /*<<< orphan*/  g_clicked; int /*<<< orphan*/  l_clicked; int /*<<< orphan*/  l_clicked_old; } ;
struct TYPE_12__ {TYPE_2__* g; TYPE_1__* l; } ;
struct TYPE_11__ {int x; int z; } ;
struct TYPE_9__ {int views; scalar_t__ clicks; } ;
struct TYPE_8__ {int /*<<< orphan*/  clicks; } ;

/* Variables and functions */
 int ADF_ANCIENT ; 
 int ADF_NEWVIEWS ; 
 int ADF_ON ; 
 int /*<<< orphan*/  AdSpace ; 
 TYPE_7__ AdStats ; 
 scalar_t__ LEV_TARG_CLICK ; 
 scalar_t__ LEV_TARG_CLICK_EXT ; 
 int MAX_ADS ; 
 int MAX_AD_VIEWS ; 
 int MONEY_SCALE ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  active_ad_nodes ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  clicked_ad_nodes ; 
 int /*<<< orphan*/  FUNC4 (struct advert*) ; 
 struct advert* FUNC5 (int) ; 
 struct advert* FUNC6 (int,int) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inactive_ad_nodes ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ,void*,int,scalar_t__*) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (struct advert*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ targeting_disabled ; 
 int tot_click_money ; 
 int /*<<< orphan*/  tot_clicks ; 
 int /*<<< orphan*/  total_sump0 ; 
 double total_sump1 ; 
 double total_sump2 ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15 (struct lev_targ_click_ext *E) {
  FUNC3 (E->type == LEV_TARG_CLICK || E->type == LEV_TARG_CLICK_EXT);
  if (targeting_disabled) {
    return 0;
  }
  user_t *U = FUNC7 (E->user_id);

  FUNC1 (U);

  int ad_id = E->ad_id;
  if (!U || ad_id <= 0 || ad_id >= MAX_ADS) { 
    return -1; 
  }

  struct advert *A = FUNC5 (ad_id);
  if (!A) {
    if (!FUNC2 (ad_id)) {
      return -1;
    }
    A = FUNC6 (ad_id, 1);
  }

  if (FUNC9 (AdSpace, U->clicked_ads, ad_id)) {
    /* duplicate click on this ad */
    return 0;
  }

  int res = FUNC12 (A);
  if (res < 0) {
    return res;
  }
    
  treeref_t RN;
  U->active_ads = FUNC10 (AdSpace, U->active_ads, ad_id, &RN);

  if (RN) {
    /* user clicks on an active ad */
    FUNC3 ((A->flags & (ADF_ON | ADF_ANCIENT)) == ADF_ON);
    --active_ad_nodes;
  } else {
    /* user clicks on an inactive ad */
    U->inactive_ads = FUNC10 (AdSpace, U->inactive_ads, ad_id, &RN);
    if (RN) {
      --inactive_ad_nodes;
      FUNC3 (!(A->flags & ADF_ANCIENT));
    } else {
      RN = FUNC13 (AdSpace);
      FUNC0 (AdSpace, RN)->x = ad_id;
      FUNC0 (AdSpace, RN)->z = 0;
    }
  }

  int cur_views = FUNC0 (AdSpace, RN)->z;
  if (cur_views <= 0) { // shit happens: user clicks on an ad we never showed her
    FUNC3 (!cur_views);
  }

  int price = (E->type == LEV_TARG_CLICK_EXT ? E->price : A->price);
  if ((price ^ A->price) < 0) {
    price = 0;
  }
  FUNC3 (A->price);
    
  if (!price) {
    FUNC0 (AdSpace, RN)->z = ~cur_views;
  }
      
  /* insert ad_id into clicked ads of user uid */

  U->clicked_ads = FUNC8 (AdSpace, U->clicked_ads, RN);
  ++clicked_ad_nodes;

  if (!price) {
    return 0;
  }

  if ((A->flags & ADF_ON) || price < 0) {
    // NB: even if ad is globally active, it might be inactive for current user due to a recent retargeting
    // we account for the click anyway
    A->l_clicked_old++;
    A->l_clicked++;

    A->g_clicked++;
    A->l_sump0 += 1.0;
    A->g_sump0 += 1.0;

    if (cur_views >= MAX_AD_VIEWS) {
      cur_views = MAX_AD_VIEWS - 1;
    }
    if (FUNC14 (!AdStats.g[cur_views].views)) {
      cur_views = 0;
    }
    if (FUNC11 (AdStats.g[cur_views].views)) {
      double p = (double) AdStats.g[cur_views].clicks / AdStats.g[cur_views].views;
      if (FUNC11 (p <= A->l_sump1) && FUNC11 (p*p <= A->l_sump2)) {
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
      /* (maybe) update statistics of ad A using cur_views (TODO) */

      /* update global statistics using cur_views */
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
    FUNC4 (A);
    tot_clicks++;
    return 1;
  }

  return 0;
}