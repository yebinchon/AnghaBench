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
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int,long (*) (void*),void*) ; 

__attribute__((used)) static int FUNC3(int cpu, long (*fn)(void *), void *arg, bool direct)
{
	if (direct || (FUNC0() && cpu == FUNC1()))
		return fn(arg);
	return FUNC2(cpu, fn, arg);
}