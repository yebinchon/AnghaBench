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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ APIC_VECTORS_PER_REG ; 
 int MAX_APIC_VECTOR ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC2(void *bitmap)
{
	int vec;
	u32 *reg;
	u8 count = 0;

	for (vec = 0; vec < MAX_APIC_VECTOR; vec += APIC_VECTORS_PER_REG) {
		reg = bitmap + FUNC0(vec);
		count += FUNC1(*reg);
	}

	return count;
}