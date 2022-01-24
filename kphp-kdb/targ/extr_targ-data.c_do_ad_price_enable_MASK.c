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
struct lev_targ_ad_price {int ad_price; } ;
struct advert {int price; int flags; } ;

/* Variables and functions */
 int ADF_ON ; 
 int /*<<< orphan*/  LEV_TARG_AD_ON ; 
 int /*<<< orphan*/  LEV_TARG_AD_PRICE ; 
 int /*<<< orphan*/  FUNC0 (struct advert*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct lev_targ_ad_price* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct advert* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct advert*) ; 
 int /*<<< orphan*/  FUNC6 (struct lev_targ_ad_price*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC7 (int ad_id, int price) {
  struct advert *A = FUNC4 (ad_id, FUNC1 (ad_id));
  int res;
  if (!A) {
    if (verbosity > 0) {
      FUNC3 (stderr, "warning: enabling undefined ad %d\n", ad_id);
    }
    return 0;
  }
  res = FUNC5 (A);
  if (res < 0) {
    return res;
  }
  res = 0;
  if (price != 0 && A->price != price) {
    struct lev_targ_ad_price *E = FUNC2 (LEV_TARG_AD_PRICE, 12, ad_id);
    E->ad_price = price;
    FUNC6 (E);
    res = 1; 
  }
  if (!(A->flags & ADF_ON)) {
    FUNC2 (LEV_TARG_AD_ON, 8, ad_id);
    FUNC0 (A, 0);
    res |= 1;
  }
  return res;
}