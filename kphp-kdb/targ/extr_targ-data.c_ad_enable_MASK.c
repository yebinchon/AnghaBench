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
struct advert {int flags; scalar_t__ disabled_since; int price; scalar_t__ userlist_computed_at; int ad_id; int users; int /*<<< orphan*/  user_list; } ;

/* Variables and functions */
 int ADF_ANCIENT ; 
 int ADF_DELAYED ; 
 int ADF_ON ; 
 scalar_t__ AD_ANCIENT_DELAY ; 
 scalar_t__ AD_RECOMPUTE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct advert*) ; 
 int /*<<< orphan*/  active_ads ; 
 int /*<<< orphan*/  FUNC1 (struct advert*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct advert*) ; 
 int /*<<< orphan*/  FUNC4 (struct advert*) ; 
 int /*<<< orphan*/  FUNC5 (struct advert*) ; 
 int /*<<< orphan*/  delay_targeting ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC7 (struct advert*) ; 
 scalar_t__ log_last_ts ; 
 int /*<<< orphan*/  FUNC8 (struct advert*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

__attribute__((used)) static int FUNC9 (struct advert *A, int price) {
  if (!A) { 
    return 0; 
  }
  if (A->flags & ADF_ANCIENT) {
    int res = FUNC7 (A);
    if (res < 0) {
      return res;
    }
    FUNC2 (A->disabled_since <= log_last_ts - AD_ANCIENT_DELAY);
  }

  if (price) {
    A->price = price;
  }

  FUNC2 (A->price);
  
  if (A->flags & ADF_ON) {
    if (A->userlist_computed_at <= log_last_ts - AD_RECOMPUTE_INTERVAL) {
      FUNC3 (A);
    } else {
      FUNC5 (A);
    }
    return 0; 
  }

  if (!A->user_list || A->disabled_since <= log_last_ts - AD_ANCIENT_DELAY || A->userlist_computed_at <= log_last_ts - AD_RECOMPUTE_INTERVAL) {
    FUNC4 (A);
  }

  FUNC8 (A);
  A->flags |= ADF_ON;
  active_ads++;

  if (!delay_targeting) {
    FUNC0 (A);
  } else {
    A->flags |= ADF_DELAYED;
  }

  FUNC1 (A);
  FUNC5 (A);

  if (verbosity > 2) {
    FUNC6 (stderr, "enabled previously disabled ad #%d: %d users\n", A->ad_id, A->users);
  }

  return 1;
}