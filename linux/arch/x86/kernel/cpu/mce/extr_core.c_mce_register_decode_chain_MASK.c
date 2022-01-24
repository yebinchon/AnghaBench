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
struct notifier_block {scalar_t__ priority; } ;

/* Variables and functions */
 scalar_t__ MCE_PRIO_EDAC ; 
 scalar_t__ MCE_PRIO_MCELOG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  num_notifiers ; 
 int /*<<< orphan*/  x86_mce_decoder_chain ; 

void FUNC3(struct notifier_block *nb)
{
	if (FUNC0(nb->priority > MCE_PRIO_MCELOG && nb->priority < MCE_PRIO_EDAC))
		return;

	FUNC1(&num_notifiers);

	FUNC2(&x86_mce_decoder_chain, nb);
}