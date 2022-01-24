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
typedef  scalar_t__ volatile u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__ volatile*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

unsigned long FUNC3(volatile u32 *ptr, u32 new)
{
	unsigned long flags;
	u32 prev;

	FUNC1(FUNC0(ptr), flags);
	prev = *ptr;
	*ptr = new;
	FUNC2(FUNC0(ptr), flags);

	return (unsigned long)prev;
}