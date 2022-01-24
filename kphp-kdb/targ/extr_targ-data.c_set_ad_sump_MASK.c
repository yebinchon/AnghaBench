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
struct lev_targ_ad_setsump {scalar_t__ type; scalar_t__ sump0; scalar_t__ sump1; scalar_t__ sump2; int /*<<< orphan*/  ad_id; } ;
struct advert {scalar_t__ price; double g_sump0; double g_sump1; double g_sump2; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_AD_SETSUMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct advert*) ; 
 struct advert* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ targeting_disabled ; 

__attribute__((used)) static int FUNC3 (struct lev_targ_ad_setsump *E) {
  if (targeting_disabled) {
    return 0;
  }
  struct advert *A = FUNC2 (E->ad_id, 0);
  FUNC0 (A && A->price > 0);
  FUNC0 (E->type == LEV_TARG_AD_SETSUMP);
  FUNC0 (E->sump0 >= 0 && E->sump1 >= 0 && E->sump2 >= 0);

  A->g_sump0 = (double) E->sump0 * (1.0 / (1LL << 32));
  A->g_sump1 = (double) E->sump1 * (1.0 / (1LL << 32));
  A->g_sump2 = (double) E->sump2 * (1.0 / (1LL << 32));

  FUNC1 (A);

  return 1;
}