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
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

void FUNC2(void *ea, unsigned long size)
{
	FUNC0(((unsigned long)ea) & ~PAGE_MASK);
	FUNC0(size & ~PAGE_MASK);

	FUNC1((unsigned long)ea, size);
}