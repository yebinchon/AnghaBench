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
typedef  int /*<<< orphan*/  irq_flow_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_fasteoi_irq ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned int irq, unsigned long trigger)
{
	irq_flow_handler_t hdl;
	bool fasteoi;

	if (trigger) {
		FUNC2(irq, IRQ_LEVEL);
		fasteoi = true;
	} else {
		FUNC1(irq, IRQ_LEVEL);
		fasteoi = false;
	}

	hdl = fasteoi ? handle_fasteoi_irq : handle_edge_irq;
	FUNC0(irq, hdl, 0, fasteoi ? "fasteoi" : "edge");
}