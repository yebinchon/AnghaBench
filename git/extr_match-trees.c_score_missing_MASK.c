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

__attribute__((used)) static int FUNC2(unsigned mode)
{
	int score;

	if (FUNC0(mode))
		score = -1000;
	else if (FUNC1(mode))
		score = -500;
	else
		score = -50;
	return score;
}