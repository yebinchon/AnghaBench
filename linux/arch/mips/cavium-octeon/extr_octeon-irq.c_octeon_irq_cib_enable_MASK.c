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
typedef  unsigned long long u64 ;
struct octeon_irq_cib_host_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  en_reg; } ;
struct octeon_irq_cib_chip_data {unsigned long long bit; struct octeon_irq_cib_host_data* host_data; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long long) ; 
 struct octeon_irq_cib_chip_data* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	unsigned long flags;
	u64 en;
	struct octeon_irq_cib_chip_data *cd = FUNC2(data);
	struct octeon_irq_cib_host_data *host_data = cd->host_data;

	FUNC3(&host_data->lock, flags);
	en = FUNC0(host_data->en_reg);
	en |= 1ull << cd->bit;
	FUNC1(host_data->en_reg, en);
	FUNC4(&host_data->lock, flags);
}