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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  num_notifiers ; 
 int /*<<< orphan*/  x86_mce_decoder_chain ; 

void FUNC2(struct notifier_block *nb)
{
	FUNC0(&num_notifiers);

	FUNC1(&x86_mce_decoder_chain, nb);
}