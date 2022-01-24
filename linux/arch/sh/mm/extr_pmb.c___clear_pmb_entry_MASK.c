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
struct pmb_entry {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 unsigned long PMB_V ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct pmb_entry *pmbe)
{
	unsigned long addr, data;
	unsigned long addr_val, data_val;

	addr = FUNC1(pmbe->entry);
	data = FUNC2(pmbe->entry);

	addr_val = FUNC0(addr);
	data_val = FUNC0(data);

	/* Clear V-bit */
	FUNC3(addr_val & ~PMB_V, addr);
	FUNC3(data_val & ~PMB_V, data);
}