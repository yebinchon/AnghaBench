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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

void FUNC1(void)
{
	FUNC0("000Dunpack ok", 1);
	FUNC0("000Dunpack ng error-msg", 0);
	/* TODO: the following tests should fail */
	FUNC0("000Aunpack", 0);
	FUNC0("0011unpack foobar", 0);
	FUNC0("0010unpack ng ok", 0);
	FUNC0("0010unpack okfoo", 1);
}