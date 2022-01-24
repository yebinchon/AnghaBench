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
 int ZPCI_PTE_INVALID ; 
 int ZPCI_TABLE_PROTECTED ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,void*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 

void FUNC5(unsigned long *entry, void *page_addr, int flags)
{
	if (flags & ZPCI_PTE_INVALID) {
		FUNC2(entry);
	} else {
		FUNC3(entry, page_addr);
		FUNC4(entry);
	}

	if (flags & ZPCI_TABLE_PROTECTED)
		FUNC1(entry);
	else
		FUNC0(entry);
}