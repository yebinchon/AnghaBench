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
struct advert {int recent_views_limit; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_AD_LIMIT_RECENT_VIEWS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct lev_generic*) ; 
 struct lev_generic* FUNC2 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct advert* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct advert*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC6 (int ad_id, int views) {
  struct advert *A = FUNC4 (ad_id, FUNC0 (ad_id));

  if (verbosity > 0) {
    FUNC3 (stderr, "in do_ad_limit_recent_views (%d, %d):\n", ad_id, views);
  }

  if (!A || views < 0) {
    return 0;
  }

  if (views >= 0x10000) {
    views = 0xffff;
  }

  int res = FUNC5 (A);
  if (res < 0) {
    return res;
  }

  if (A->recent_views_limit == views) {
    return 1;
  }

  struct lev_generic *E = FUNC2 (LEV_TARG_AD_LIMIT_RECENT_VIEWS + views, 8, ad_id);
  return FUNC1 (E);
}