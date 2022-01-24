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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  irq_handler_t ;
struct TYPE_2__ {int /*<<< orphan*/  brdno; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_TIMER ; 
 int MVME162_IRQ_ABORT ; 
 int MVME167_IRQ_ABORT ; 
 int MVME16x_IRQ_TIMER ; 
 int /*<<< orphan*/  PCCTCMP1 ; 
 int /*<<< orphan*/  PCCTCNT1 ; 
 int /*<<< orphan*/  PCCTIC1 ; 
 int PCCTIC1_INT_EN ; 
 int /*<<< orphan*/  PCCTOVR1 ; 
 int PCCTOVR1_COC_EN ; 
 int PCCTOVR1_TIC_EN ; 
 int /*<<< orphan*/  PCC_TIMER_CLOCK_FREQ ; 
 int /*<<< orphan*/  PCC_TIMER_CYCLES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvme16x_abort_int ; 
 int /*<<< orphan*/  mvme16x_clk ; 
 int /*<<< orphan*/  mvme16x_timer_int ; 
 TYPE_1__ mvme_bdid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC7 (irq_handler_t timer_routine)
{
    uint16_t brdno = FUNC0(mvme_bdid.brdno);
    int irq;

    /* Using PCCchip2 or MC2 chip tick timer 1 */
    FUNC4(PCCTCNT1, 0);
    FUNC4(PCCTCMP1, PCC_TIMER_CYCLES);
    FUNC3(PCCTOVR1, FUNC2(PCCTOVR1) | PCCTOVR1_TIC_EN | PCCTOVR1_COC_EN);
    FUNC3(PCCTIC1, PCCTIC1_INT_EN | 6);
    if (FUNC6(MVME16x_IRQ_TIMER, mvme16x_timer_int, IRQF_TIMER, "timer",
                    timer_routine))
	FUNC5 ("Couldn't register timer int");

    FUNC1(&mvme16x_clk, PCC_TIMER_CLOCK_FREQ);

    if (brdno == 0x0162 || brdno == 0x172)
	irq = MVME162_IRQ_ABORT;
    else
        irq = MVME167_IRQ_ABORT;
    if (FUNC6(irq, mvme16x_abort_int, 0,
				"abort", mvme16x_abort_int))
	FUNC5 ("Couldn't register abort int");
}