#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* panic ) (void*) ;} ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *this,
                             unsigned long event, void *ptr)
{
	/*
	 * panic does a local_irq_disable, but we really
	 * want interrupts to be hard disabled.
	 */
	FUNC1();

	/*
	 * If firmware-assisted dump has been registered then trigger
	 * firmware-assisted dump and let firmware handle everything else.
	 */
	FUNC0(NULL, ptr);
	if (ppc_md.panic)
		ppc_md.panic(ptr);  /* May not return */
	return NOTIFY_DONE;
}