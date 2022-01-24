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
struct advert {short category; short subcategory; } ;

/* Variables and functions */
 short MAX_AD_CATEGORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct advert* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct advert*) ; 

__attribute__((used)) static int FUNC4 (struct lev_targ_ad_setint *E) {
  short category = E->value & 0xffff, subcategory = E->value >> 16;
  FUNC1 (category >= 0 && category <= MAX_AD_CATEGORY && subcategory >= 0 && subcategory <= MAX_AD_CATEGORY);
  struct advert *A = FUNC2 (E->ad_id, FUNC0 (E->ad_id));
  if (!A) { 
    return -1; 
  }

  FUNC1 (FUNC3 (A) >= 0);

  A->category = category;
  A->subcategory = subcategory;

  return 1;
}