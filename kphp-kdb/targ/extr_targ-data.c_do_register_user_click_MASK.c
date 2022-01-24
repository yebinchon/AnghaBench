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
struct lev_targ_click_ext {int price; int user_id; } ;
struct advert {int flags; int price; } ;

/* Variables and functions */
 int ADF_ANCIENT ; 
 int /*<<< orphan*/  LEV_TARG_CLICK ; 
 int /*<<< orphan*/  LEV_TARG_CLICK_EXT ; 
 scalar_t__ FUNC0 (struct advert*) ; 
 struct lev_targ_click_ext* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct advert* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct lev_targ_click_ext*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC6 (int user_id, int ad_id, int price) {
  struct advert *A = FUNC4 (ad_id, 0);
  struct lev_targ_click_ext *E;
  int uid = FUNC2 (user_id);
  if (verbosity > 1) {
    FUNC3 (stderr, "user %d clicks on ad %d, price %d\n", user_id, ad_id, price);
  }
  if (uid < 0) {
    if (verbosity > 0) {
      FUNC3 (stderr, "error: unknown user %d, click neglected\n", user_id);
    }
    return -1;
  }
  if (!A || (A->flags & ADF_ANCIENT) || FUNC0 (A) || (A->price > 0 && price < 0)) {
    if (verbosity > 0) {
      FUNC3 (stderr, "warning: user %d clicks on ad %d, price %d; known ad price is %d, click ignored\n", 
	user_id, ad_id, price, A ? A->price : -1);
    }
    return -1;
  }
  if (A->price == price || (A->price < 0 && price < 0)) {
    E = FUNC1 (LEV_TARG_CLICK, 12, ad_id);
  } else {
    E = FUNC1 (LEV_TARG_CLICK_EXT, 16, ad_id);
    E->price = price;
  }
  E->user_id = user_id;

  return FUNC5 (E);
}