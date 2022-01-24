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
 unsigned long* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 unsigned long* FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*) ; 

__attribute__((used)) static unsigned long *FUNC6(unsigned long *entry)
{
	unsigned long *sto;

	if (FUNC3(*entry))
		sto = FUNC2(*entry);
	else {
		sto = FUNC0();
		if (!sto)
			return NULL;

		FUNC4(entry, sto);
		FUNC5(entry);
		FUNC1(entry);
	}
	return sto;
}