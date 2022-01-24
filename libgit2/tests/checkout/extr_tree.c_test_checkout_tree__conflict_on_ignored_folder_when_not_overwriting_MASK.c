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
 int GIT_CHECKOUT_DONT_OVERWRITE_IGNORED ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_ECONFLICT ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(void)
{
	int error;

	FUNC2(error = FUNC0(
		GIT_CHECKOUT_SAFE | GIT_CHECKOUT_DONT_OVERWRITE_IGNORED, true));

	FUNC1(GIT_ECONFLICT, error);
}