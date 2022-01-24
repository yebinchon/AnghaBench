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
struct lev_generic {int dummy; } ;
struct advert {int dummy; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_AD_SETSITEMASK ; 
 int FUNC0 (struct lev_generic*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct lev_generic* FUNC2 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct advert* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct advert*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC6 (int ad_id, int ext_sites) {
 struct advert *A = FUNC4 (ad_id, FUNC1 (ad_id));

  if (verbosity > 0) {
    FUNC3 (stderr, "in do_ad_change_sites (%d, %d):\n", ad_id, ext_sites);
  }

  if (!A || (ext_sites & -0x100)) {
    return 0;
  }

  int res = FUNC5 (A);
  if (res < 0) {
    return res;
  }

  struct lev_generic *E = FUNC2 (LEV_TARG_AD_SETSITEMASK + ext_sites, 8, ad_id);
  return FUNC0 (E);
}