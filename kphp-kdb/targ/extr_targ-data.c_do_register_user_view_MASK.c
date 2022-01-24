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
struct lev_targ_user_view {int user_id; } ;
struct advert {int flags; } ;

/* Variables and functions */
 int ADF_ANCIENT ; 
 int /*<<< orphan*/  LEV_TARG_USER_VIEW ; 
 scalar_t__ FUNC0 (struct advert*) ; 
 struct lev_targ_user_view* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct advert* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct lev_targ_user_view*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC6 (int user_id, int ad_id) {
  struct advert *A = FUNC4 (ad_id, 0);
  int uid = FUNC2 (user_id);

  if (verbosity > 2) {
    FUNC3 (stderr, "user %d views ad %d\n", user_id, ad_id);
  }

  if (uid < 0) {
    if (verbosity > 0) {
      FUNC3 (stderr, "error: unknown user %d, view ignored\n", user_id);
    }
    return -1;
  }
  if (!A || (A->flags & ADF_ANCIENT) || FUNC0 (A)) {
    if (verbosity > 0) {
      FUNC3 (stderr, "error: unknown or ancient ad %d, view ignored\n", ad_id);
    }
    return -1;
  }

  struct lev_targ_user_view *E = FUNC1 (LEV_TARG_USER_VIEW, 12, ad_id);
  E->user_id = user_id;

  return FUNC5 (E);
}