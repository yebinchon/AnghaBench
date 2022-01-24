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
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ebase ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  panic_null_cerr ; 

void FUNC3(unsigned long offset, void *addr,
	unsigned long size)
{
	unsigned long uncached_ebase = FUNC0(ebase);

	if (!addr)
		FUNC2(panic_null_cerr);

	FUNC1((void *)(uncached_ebase + offset), addr, size);
}