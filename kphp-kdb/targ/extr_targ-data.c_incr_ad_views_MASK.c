#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct advert {int views; int l_views; int flags; int l_sump1; int g_sump1; int l_sump2; int g_sump2; long long price; long long click_money; } ;
struct TYPE_4__ {TYPE_1__* g; } ;
struct TYPE_3__ {double views; scalar_t__ clicks; } ;

/* Variables and functions */
 int ADF_ANYVIEWS ; 
 int ADF_OLDVIEWS ; 
 TYPE_2__ AdStats ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct advert*) ; 
 struct advert* FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (double) ; 
 scalar_t__ FUNC5 (struct advert*) ; 
 long long tot_click_money ; 
 int tot_views ; 

__attribute__((used)) static void FUNC6 (int ad_id, int new_views, int mode) {
  struct advert *A = FUNC3 (ad_id, 0);
  if (!A) {
    if (!FUNC0 (ad_id)) {
      return;
    }
    A = FUNC3 (ad_id, 1);
  }
  /* have to load this ancient ad (exact views number is needed for stats) */
  FUNC1 (FUNC5 (A) >= 0);
  if ((unsigned) new_views < 0x100000) {
    A->views += new_views;
    A->l_views += new_views;
    tot_views += new_views;

    if (!mode && !(A->flags & ADF_ANYVIEWS)) {
      A->flags |= ADF_OLDVIEWS;
    }
    if (!mode && FUNC4 (AdStats.g[0].views)) {
      double p = (double) AdStats.g[0].clicks / AdStats.g[0].views;
      A->l_sump1 += new_views * p;
      A->g_sump1 += new_views * p;
      A->l_sump2 += new_views * p*p;
      A->g_sump2 += new_views * p*p;
    }
    if (A->price < 0) {
      A->click_money += -A->price * (long long) new_views;
      tot_click_money += -A->price * (long long) new_views;
    }

    FUNC2 (A);
  }
}