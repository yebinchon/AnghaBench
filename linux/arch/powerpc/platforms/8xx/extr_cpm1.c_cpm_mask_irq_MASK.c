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
struct irq_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpic_cimr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* cpic_reg ; 
 scalar_t__ FUNC1 (struct irq_data*) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	unsigned int cpm_vec = (unsigned int)FUNC1(d);

	FUNC0(&cpic_reg->cpic_cimr, (1 << cpm_vec));
}