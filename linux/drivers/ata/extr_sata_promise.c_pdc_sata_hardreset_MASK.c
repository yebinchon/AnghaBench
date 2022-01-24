#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ata_link {TYPE_1__* ap; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int PDC_FLAG_GEN_II ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct ata_link*,unsigned int*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ata_link *link, unsigned int *class,
			      unsigned long deadline)
{
	if (link->ap->flags & PDC_FLAG_GEN_II)
		FUNC1(link->ap);
	/* hotplug IRQs should have been masked by pdc_sata_freeze() */
	FUNC0(link->ap);
	FUNC2(link->ap);

	/* sata_promise can't reliably acquire the first D2H Reg FIS
	 * after hardreset.  Do non-waiting hardreset and request
	 * follow-up SRST.
	 */
	return FUNC3(link, class, deadline);
}