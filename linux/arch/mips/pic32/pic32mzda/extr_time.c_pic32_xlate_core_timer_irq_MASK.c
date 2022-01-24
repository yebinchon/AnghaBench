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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CORE_TIMER_INTERRUPT ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pic32_infra_match ; 

__attribute__((used)) static unsigned int FUNC4(void)
{
	static struct device_node *node;
	unsigned int irq;

	node = FUNC3(NULL, pic32_infra_match);

	if (FUNC0(!node))
		goto default_map;

	irq = FUNC2(node, 0);
	if (!irq)
		goto default_map;

	return irq;

default_map:

	return FUNC1(NULL, DEFAULT_CORE_TIMER_INTERRUPT);
}