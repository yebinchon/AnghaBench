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
 int FUNC0 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  backends ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC2(const char *comp)
{
	int i;

	i = FUNC0(backends, -1, comp);
	if (i >= 0)
		return true;

	/*
	 * Crypto does not ignore a trailing new line symbol,
	 * so make sure you don't supply a string containing
	 * one.
	 * This also means that we permit zcomp initialisation
	 * with any compressing algorithm known to crypto api.
	 */
	return FUNC1(comp, 0, 0) == 1;
}