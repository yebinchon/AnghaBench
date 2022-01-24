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

/* Variables and functions */
 int /*<<< orphan*/  TL_ERROR_VALUE_NOT_IN_RANGE ; 
 long long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long long,long long,long long) ; 

__attribute__((used)) static inline long long FUNC2 (long long min, long long max) {
  long long x = FUNC0 ();
  if (x < min || x > max) {
    FUNC1 (TL_ERROR_VALUE_NOT_IN_RANGE, "Expected int64 in range [%lld,%lld], %lld presented", min, max, x);
  }
  return x;
}