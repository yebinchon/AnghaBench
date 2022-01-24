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
struct lev_targ_ad_setint {int value; int /*<<< orphan*/  ad_id; } ;
struct advert {int group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct advert* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct advert*) ; 

__attribute__((used)) static int FUNC4 (struct lev_targ_ad_setint *E) {
  FUNC1 (E->value != (-1 << 31));
  struct advert *A = FUNC2 (E->ad_id, FUNC0 (E->ad_id));
  if (!A) { 
    return -1; 
  }

  FUNC1 (FUNC3 (A) >= 0);

  A->group = E->value;

  return 1;
}