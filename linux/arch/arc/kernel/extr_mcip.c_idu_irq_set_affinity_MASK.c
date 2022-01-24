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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct cpumask {int dummy; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IDU_M_DISTRI_DEST ; 
 unsigned int IDU_M_DISTRI_RR ; 
 int IRQ_SET_MASK_OK ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cpumask const*,int /*<<< orphan*/ ) ; 
 unsigned int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  mcip_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC8(struct irq_data *data, const struct cpumask *cpumask,
		     bool force)
{
	unsigned long flags;
	cpumask_t online;
	unsigned int destination_bits;
	unsigned int distribution_mode;

	/* errout if no online cpu per @cpumask */
	if (!FUNC0(&online, cpumask, cpu_online_mask))
		return -EINVAL;

	FUNC6(&mcip_lock, flags);

	destination_bits = FUNC1(&online)[0];
	FUNC4(data->hwirq, destination_bits);

	if (FUNC2(destination_bits) == FUNC3(destination_bits))
		distribution_mode = IDU_M_DISTRI_DEST;
	else
		distribution_mode = IDU_M_DISTRI_RR;

	FUNC5(data->hwirq, false, 0, true, distribution_mode);

	FUNC7(&mcip_lock, flags);

	return IRQ_SET_MASK_OK;
}