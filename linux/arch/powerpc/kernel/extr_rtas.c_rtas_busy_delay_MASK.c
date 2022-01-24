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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 () ; 
 unsigned int FUNC3 (int) ; 

unsigned int FUNC4(int status)
{
	unsigned int ms;

	FUNC0();
	ms = FUNC3(status);
	if (ms && FUNC2())
		FUNC1(ms);

	return ms;
}