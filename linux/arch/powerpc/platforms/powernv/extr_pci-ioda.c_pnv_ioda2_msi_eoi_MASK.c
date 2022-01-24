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
struct irq_chip {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 struct irq_chip* FUNC2 (struct irq_data*) ; 
 scalar_t__ FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_chip*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	int64_t rc;
	unsigned int hw_irq = (unsigned int)FUNC3(d);
	struct irq_chip *chip = FUNC2(d);

	rc = FUNC4(chip, hw_irq);
	FUNC0(rc);

	FUNC1(d);
}