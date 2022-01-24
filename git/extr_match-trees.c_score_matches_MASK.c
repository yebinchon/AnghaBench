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
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(unsigned mode1, unsigned mode2)
{
	int score;

	/* Heh, we found SHA-1 collisions between different kind of objects */
	if (FUNC0(mode1) != FUNC0(mode2))
		score = -100;
	else if (FUNC1(mode1) != FUNC1(mode2))
		score = -50;

	else if (FUNC0(mode1))
		score = 1000;
	else if (FUNC1(mode1))
		score = 500;
	else
		score = 250;
	return score;
}