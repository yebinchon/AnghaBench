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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char) ; 

void FUNC2(void)
{
	/* Passing cases */
	FUNC0(FUNC1('0') == 0x0);
	FUNC0(FUNC1('1') == 0x1);
	FUNC0(FUNC1('3') == 0x3);
	FUNC0(FUNC1('9') == 0x9);
	FUNC0(FUNC1('A') == 0xa);
	FUNC0(FUNC1('C') == 0xc);
	FUNC0(FUNC1('F') == 0xf);
	FUNC0(FUNC1('a') == 0xa);
	FUNC0(FUNC1('c') == 0xc);
	FUNC0(FUNC1('f') == 0xf);

	/* Failing cases */
	FUNC0(FUNC1('g') == -1);
	FUNC0(FUNC1('z') == -1);
	FUNC0(FUNC1('X') == -1);
}