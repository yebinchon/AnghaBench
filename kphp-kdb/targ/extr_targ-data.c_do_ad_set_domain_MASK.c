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
struct lev_targ_ad_setint {int value; } ;
struct advert {int domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_TARG_AD_SETDOMAIN ; 
 int MAX_AD_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct lev_targ_ad_setint*) ; 
 struct lev_targ_ad_setint* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct advert* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct advert*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC6 (int ad_id, int domain) {
  struct advert *A = FUNC4 (ad_id, FUNC0 (ad_id));

  if (verbosity > 0) {
    FUNC3 (stderr, "in do_ad_set_domain (%d, %d):\n", ad_id, domain);
  }

  if (!A || domain < 0 || domain > MAX_AD_DOMAIN) {
    return 0;
  }

  int res = FUNC5 (A);
  if (res < 0) {
    return res;
  }

  if (A->domain == domain) {
    return 1;
  }

  struct lev_targ_ad_setint *E = FUNC2 (LEV_TARG_AD_SETDOMAIN, 12, ad_id);
  E->value = domain;

  return FUNC1 (E);
}