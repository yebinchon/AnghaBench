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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_calc_key ; 
 int /*<<< orphan*/  test_cookie ; 
 int /*<<< orphan*/  test_cookie_merge ; 
 int /*<<< orphan*/  test_lookup ; 

void FUNC1(void)
{
    FUNC0("calc_key", test_calc_key);
    FUNC0("test_lookup", test_lookup);
    FUNC0("cookie", test_cookie);
    FUNC0("cookie-merge", test_cookie_merge);
}