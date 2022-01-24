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
 unsigned long L1_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void *vaddr)
{
	unsigned long end = (unsigned long)vaddr + L1_CACHE_BYTES;

	FUNC0(vaddr, L1_CACHE_BYTES);
	FUNC2();
	FUNC1((unsigned long)vaddr, end);
}