#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lev_targ_ad_setctr_pack {long long views; } ;
struct lev_targ_ad_setctr {long long clicks; long long views; } ;
struct lev_generic {int dummy; } ;
struct advert {int flags; scalar_t__ price; int expected_gain; } ;

/* Variables and functions */
 int ADF_ANCIENT ; 
 int ESTIMATED_GAIN_EPS ; 
 scalar_t__ LEV_TARG_AD_SETCTR ; 
 scalar_t__ LEV_TARG_AD_SETCTR_PACK ; 
 long long MAX_G_CLICKS ; 
 scalar_t__ FUNC0 (struct advert*) ; 
 scalar_t__ FUNC1 (scalar_t__,int,int) ; 
 double FUNC2 (struct advert*,long long,long long) ; 
 struct advert* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lev_generic*) ; 

int FUNC5 (int ad_id, long long g_clicks, long long g_views) {
  struct advert *A = FUNC3 (ad_id, 0);
  if (!A || (A->flags & ADF_ANCIENT) || FUNC0 (A) || g_clicks < 0 || g_views <= 0 || g_clicks >= MAX_G_CLICKS) { 
    return 0; 
  }
  if (A->price <= 0) {
    return 1;
  }
  double new_estimated_gain = FUNC2 (A, g_clicks, g_views);
  if (new_estimated_gain >= (1 - ESTIMATED_GAIN_EPS) * A->expected_gain && new_estimated_gain <= (1 + ESTIMATED_GAIN_EPS) * A->expected_gain) {
    return 1;
  }
  if (g_clicks < 256 && g_views <= 0x7fffffff) {
    struct lev_targ_ad_setctr_pack *E = (struct lev_targ_ad_setctr_pack *)FUNC1 (LEV_TARG_AD_SETCTR_PACK + g_clicks, 12, ad_id);
    E->views = g_views;
    return FUNC4 ((struct lev_generic *)E);
  } else {
    struct lev_targ_ad_setctr *E = (struct lev_targ_ad_setctr *)FUNC1 (LEV_TARG_AD_SETCTR, 20, ad_id);
    E->clicks = g_clicks;
    E->views = g_views;
    return FUNC4 ((struct lev_generic *)E);
  }
}