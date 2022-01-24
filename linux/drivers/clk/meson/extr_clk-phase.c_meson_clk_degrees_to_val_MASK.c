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
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(int degrees, unsigned int width)
{
	unsigned int val = FUNC0(degrees, FUNC1(width));

	/*
	 * This last calculation is here for cases when degrees is rounded
	 * to 360, in which case val == (1 << width).
	 */
	return val % (1 << width);
}