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
 int /*<<< orphan*/  FUNC0 (void*,void const*,unsigned long) ; 
 scalar_t__ FUNC1 (void const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,unsigned long) ; 

unsigned long FUNC3(void *to, const void *from,
			unsigned long n)
{
	if (FUNC1(from, n))
		FUNC0(to, from, n);
	else
		FUNC2(to, 0, n);
	return n;
}