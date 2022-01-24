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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  twd_clk ; 
 int /*<<< orphan*/  twd_clk_nb ; 
 scalar_t__ twd_evt ; 

__attribute__((used)) static int FUNC3(void)
{
	if (twd_evt && FUNC2(twd_evt) && !FUNC0(twd_clk))
		return FUNC1(twd_clk, &twd_clk_nb);

	return 0;
}