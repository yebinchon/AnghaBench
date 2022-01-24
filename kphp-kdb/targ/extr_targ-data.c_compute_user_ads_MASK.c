#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_t ;
struct TYPE_4__ {long ad_id; int views; double expected_gain; } ;
struct TYPE_3__ {int price; } ;

/* Variables and functions */
 int ADF_SITES_MASK_SHIFT ; 
 double EXPECTED_GAIN_USERADS_MULTIPLIER ; 
 TYPE_2__* H ; 
 int HN ; 
 int MAX_USERS ; 
 int* R ; 
 int R_cnt ; 
 int __and_mask ; 
 long long __cat_mask ; 
 scalar_t__ __exclude_ad_id ; 
 int __use_factor ; 
 int __use_views_limit ; 
 int __xor_mask ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (long) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  heap_push_user_ad ; 
 int /*<<< orphan*/  heap_push_user_ad_ext ; 
 int /*<<< orphan*/  heap_push_user_ad_std ; 

int FUNC5 (int user_id, int limit, int flags, int and_mask, int xor_mask, long long cat_mask) {
  user_t *U = FUNC3 (user_id);
  int N;

// fprintf (stderr, "compute_user_ads(%d,%d,%d,%d:%d): U=%p\n", user_id, limit, flags, and_mask, xor_mask, U);

  if (!U || limit <= 0) { return -1; }

  if (limit > (MAX_USERS >> 2)) {
    limit = (MAX_USERS >> 2);
  }

  if (flags & 16) {
    and_mask |= 1;
    xor_mask |= 1;
  }

  heap_push_user_ad = (flags & 8) ? heap_push_user_ad_ext : heap_push_user_ad_std;
  __use_factor = 1;
  __use_views_limit = 1;
  __exclude_ad_id = 0;
  __and_mask = (and_mask & 0xff) << ADF_SITES_MASK_SHIFT;
  __xor_mask = (xor_mask & 0xff) << ADF_SITES_MASK_SHIFT;
  __cat_mask = cat_mask;

  FUNC1 (U, limit);

  __use_factor = 0;
  __use_views_limit = 0;
  __and_mask = (254 << ADF_SITES_MASK_SHIFT);
  __xor_mask = 0;
  __cat_mask = -1LL;

  N = HN;
  FUNC0 (N >= 0 && N <= limit);

  if (flags & 7) {
    int *R_end = R + HN * (1 + (flags & 1) + ((flags >> 1) & 1) + ((flags >> 2) & 1));
    while (HN > 0) {
      long ad_id = H[1].ad_id;
      if (flags & 4) {
	*--R_end = H[1].views;
      }
      if (flags & 2) {
	*--R_end = FUNC2 (ad_id)->price;
      }
      if (flags & 1) {
	double gain = H[1].expected_gain * EXPECTED_GAIN_USERADS_MULTIPLIER;
	*--R_end = (int) (gain < 0 ? 0 : (gain > 2e9 ? 2e9 : gain + 0.5));
      }
      *--R_end = ad_id;
      FUNC4 ();
    }
    FUNC0 (R_end == R);
  } else {
    while (HN > 0) {
      R[HN-1] = H[1].ad_id;
      FUNC4 ();
    }
  }

  return R_cnt = N;
}