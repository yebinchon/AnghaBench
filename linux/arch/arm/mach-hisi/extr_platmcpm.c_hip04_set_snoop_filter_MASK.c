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
 scalar_t__ FAB_SF_MODE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ fabric ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC4(unsigned int cluster, unsigned int on)
{
	unsigned long data;

	if (!fabric)
		FUNC0();
	data = FUNC2(fabric + FAB_SF_MODE);
	if (on)
		data |= 1 << cluster;
	else
		data &= ~(1 << cluster);
	FUNC3(data, fabric + FAB_SF_MODE);
	do {
		FUNC1();
	} while (data != FUNC2(fabric + FAB_SF_MODE));
}