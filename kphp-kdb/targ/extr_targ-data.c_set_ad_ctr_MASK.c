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
struct lev_generic {int type; int /*<<< orphan*/  a; } ;
struct advert {scalar_t__ price; long long g_clicked_old; long long l_clicked_old; long long g_views; long long l_views; } ;

/* Variables and functions */
 int LEV_TARG_AD_SETCTR ; 
 int LEV_TARG_AD_SETCTR_PACK ; 
 long long MAX_G_CLICKS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct advert*) ; 
 struct advert* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ targeting_disabled ; 

__attribute__((used)) static int FUNC3 (struct lev_generic *E) {
  if (targeting_disabled) {
    return 0;
  }
  struct advert *A = FUNC2 (E->a, 0);
  FUNC0 (A && A->price > 0);
  long long g_clicks, g_views;

  if (E->type == LEV_TARG_AD_SETCTR) {
    g_clicks = ((struct lev_targ_ad_setctr *)E)->clicks;
    g_views = ((struct lev_targ_ad_setctr *)E)->views;
  } else {
    FUNC0 ((E->type & -0x100) == LEV_TARG_AD_SETCTR_PACK);
    g_clicks = E->type & 0xff;
    g_views = ((struct lev_targ_ad_setctr_pack *)E)->views;
  }
  FUNC0 (g_clicks >= 0 && g_views > 0 && g_clicks < MAX_G_CLICKS);

  A->g_clicked_old = g_clicks - A->l_clicked_old * 10LL;
  A->g_views = g_views - A->l_views * 10LL;
  FUNC1 (A);

  return 1;
}