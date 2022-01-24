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
struct advert {int flags; } ;

/* Variables and functions */
 int ADF_ON ; 
 int /*<<< orphan*/  LEV_TARG_AD_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct advert*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct advert* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC5 (int ad_id) {
  struct advert *A = FUNC4 (ad_id, 0);
  if (!A && verbosity > 0 && !FUNC1 (ad_id)) {
    FUNC3 (stderr, "warning: disabling undefined ad %d\n", ad_id);
  }
  if (A && (A->flags & ADF_ON)) {
    FUNC2 (LEV_TARG_AD_OFF, 8, ad_id);
    FUNC0 (A);
    return 1;
  }
  return 0;
}