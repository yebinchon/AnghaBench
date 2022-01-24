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
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (struct irq_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	/*
	 * By default send all common interrupts to all available online CPUs.
	 * The affinity of common interrupts in IDU must be set manually since
	 * in some cases the kernel will not call irq_set_affinity() by itself:
	 *   1. When the kernel is not configured with support of SMP.
	 *   2. When the kernel is configured with support of SMP but upper
	 *      interrupt controllers does not support setting of the affinity
	 *      and cannot propagate it to IDU.
	 */
	FUNC0(data, cpu_online_mask, false);
	FUNC1(data);
}