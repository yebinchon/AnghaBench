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
struct pmb_entry {int vpn; int ppn; int flags; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int PMB_V ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pmb_entry *pmbe)
{
	unsigned long addr, data;

	addr = FUNC3(pmbe->entry);
	data = FUNC4(pmbe->entry);

	FUNC2();

	/* Set V-bit */
	FUNC0(pmbe->vpn | PMB_V, addr);
	FUNC0(pmbe->ppn | pmbe->flags | PMB_V, data);

	FUNC1();
}