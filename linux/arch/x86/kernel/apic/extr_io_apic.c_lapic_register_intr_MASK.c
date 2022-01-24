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

/* Variables and functions */
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lapic_chip ; 

__attribute__((used)) static void FUNC2(int irq)
{
	FUNC0(irq, IRQ_LEVEL);
	FUNC1(irq, &lapic_chip, handle_edge_irq,
				      "edge");
}