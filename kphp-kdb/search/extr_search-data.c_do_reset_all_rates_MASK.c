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
 int /*<<< orphan*/  LEV_SEARCH_RESET_ALL_RATES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

int FUNC1 (int p) {
  if (p < 0 || p >= 14) {
    return -1;
  }
  FUNC0 (LEV_SEARCH_RESET_ALL_RATES, 8, p);
  return 1;
}