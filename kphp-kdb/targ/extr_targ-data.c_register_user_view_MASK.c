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
struct TYPE_10__ {int /*<<< orphan*/  inactive_ads; int /*<<< orphan*/  active_ads; int /*<<< orphan*/  clicked_ads; } ;
typedef  TYPE_3__ user_t ;
typedef  scalar_t__ treeref_t ;
struct lev_targ_user_view {scalar_t__ type; int ad_id; int /*<<< orphan*/  user_id; } ;
struct advert {double l_sump1; double g_sump1; double l_sump2; double g_sump2; scalar_t__ price; int flags; } ;
struct TYPE_12__ {TYPE_2__* g; TYPE_1__* l; } ;
struct TYPE_11__ {int z; int x; } ;
struct TYPE_9__ {double views; scalar_t__ clicks; } ;
struct TYPE_8__ {int /*<<< orphan*/  views; } ;

/* Variables and functions */
 int ADF_ANYVIEWS ; 
 int ADF_NEWVIEWS ; 
 int /*<<< orphan*/  AdSpace ; 
 TYPE_7__ AdStats ; 
 scalar_t__ LEV_TARG_USER_VIEW ; 
 int MAX_ADS ; 
 int MAX_AD_VIEWS ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct advert*) ; 
 struct advert* FUNC5 (int) ; 
 struct advert* FUNC6 (int,int) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inactive_ad_nodes ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (double) ; 
 int FUNC12 (struct advert*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct advert*,int /*<<< orphan*/ ) ; 
 scalar_t__ targeting_disabled ; 
 double total_sump1 ; 
 double total_sump2 ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16 (struct lev_targ_user_view *E) {
  FUNC3 (E->type == LEV_TARG_USER_VIEW);
  user_t *U = FUNC7 (E->user_id);

  FUNC1 (U);

  if (targeting_disabled) {
    return 0;
  }

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

  if (FUNC10 (AdSpace, U->clicked_ads, ad_id)) {
    /* ad already clicked, view ignored */
    return 0;
  }

  /* have to load this ancient ad (exact views number is needed for stats) */
  int res = FUNC12 (A);
  if (res < 0) {
    return res;
  }
    
  int cur_views;
  treeref_t N = FUNC10 (AdSpace, U->active_ads, ad_id);
  if (N) {
    cur_views = ++FUNC0 (AdSpace, N)->z;
  } else {
    N = FUNC10 (AdSpace, U->inactive_ads, ad_id);
    if (N) {
      cur_views = ++FUNC0 (AdSpace, N)->z;
    } else {
      N = FUNC13 (AdSpace);
      FUNC0 (AdSpace, N)->x = ad_id;
      cur_views = FUNC0 (AdSpace, N)->z = 1;
      U->inactive_ads = FUNC9 (AdSpace, U->inactive_ads, N);
      ++inactive_ad_nodes;
    }
  }

  FUNC8 (ad_id, 1, 1);
  // ???? account this view in the new way as well

  if (cur_views >= MAX_AD_VIEWS) {
    cur_views = MAX_AD_VIEWS - 1;
  }

  long i = cur_views;
  if (FUNC15 (!AdStats.g[i].views)) {
    i = 0;
  }
  if (FUNC11 (AdStats.g[i].views)) {
    double p = (double) AdStats.g[i].clicks / AdStats.g[i].views;
    A->l_sump1 += p;
    A->g_sump1 += p;
    A->l_sump2 += p*p;
    A->g_sump2 += p*p;
    if (A->price > 0 && (A->flags & ADF_NEWVIEWS)) {
      total_sump1 += p;
      total_sump2 += p*p;
    }
    FUNC4 (A);
  }

  if (!(A->flags & ADF_ANYVIEWS)) {
    A->flags |= ADF_NEWVIEWS;
  }
  if ((A->flags & ADF_NEWVIEWS) && A->price > 0) {
    ++AdStats.l[0].views;
    ++AdStats.g[0].views;
    FUNC3 (cur_views > 0);
    ++AdStats.l[cur_views].views;
    ++AdStats.g[cur_views].views;
  }

  FUNC14 (A, E->user_id);
      
  return 1;
}