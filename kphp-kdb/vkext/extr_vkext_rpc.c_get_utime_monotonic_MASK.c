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
struct timespec {double tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  utime ; 

__attribute__((used)) static double FUNC5 (void) { /* {{{ */
  FUNC0 (utime);
  FUNC2 (utime);
  struct timespec T;
  FUNC3 (FUNC4(CLOCK_MONOTONIC, &T) >= 0);
  FUNC1 (utime);
  return T.tv_sec + (double) T.tv_nsec * 1e-9;
}