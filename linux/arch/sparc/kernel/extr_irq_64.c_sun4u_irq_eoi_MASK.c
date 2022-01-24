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
struct irq_handler_data {int /*<<< orphan*/  iclr; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICLR_IDLE ; 
 struct irq_handler_data* FUNC0 (struct irq_data*) ; 
 scalar_t__ FUNC1 (struct irq_handler_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *data)
{
	struct irq_handler_data *handler_data;

	handler_data = FUNC0(data);
	if (FUNC1(handler_data))
		FUNC2(ICLR_IDLE, handler_data->iclr);
}