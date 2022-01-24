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
 int passed ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 

__attribute__((used)) static void
FUNC1 (const char *expr, int computed, int expected)
{
  FUNC0 ("%s = %d [expected=%d] ", expr, computed, expected);

  bool result = computed == expected;
  FUNC0 ("%s\n", result ? "PASS" : "FAIL");

  passed &= result;
}