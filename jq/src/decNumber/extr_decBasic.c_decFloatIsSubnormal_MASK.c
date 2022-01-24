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
typedef  int uInt ;
typedef  int /*<<< orphan*/  decFloat ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 

uInt FUNC3(const decFloat *df) {
  if (FUNC0(df)) return 0;
  // is finite
  if (FUNC2(df)) return 0;
  // it is <Nmin, but could be zero
  if (FUNC1(df)) return 0;
  return 1;                                  // is subnormal
  }