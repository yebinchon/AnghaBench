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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  x2apic_extra_bits ; 

__attribute__((used)) static unsigned int FUNC4(unsigned long x)
{
	unsigned int id;

	FUNC0(FUNC3() && FUNC2() > 1);
	id = x | FUNC1(x2apic_extra_bits);

	return id;
}