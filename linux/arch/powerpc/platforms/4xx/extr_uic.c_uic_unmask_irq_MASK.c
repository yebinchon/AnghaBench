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
typedef  int u32 ;
struct uic {int /*<<< orphan*/  lock; scalar_t__ dcrbase; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ UIC_ER ; 
 scalar_t__ UIC_SR ; 
 struct uic* FUNC0 (struct irq_data*) ; 
 scalar_t__ FUNC1 (struct irq_data*) ; 
 unsigned int FUNC2 (struct irq_data*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d)
{
	struct uic *uic = FUNC0(d);
	unsigned int src = FUNC2(d);
	unsigned long flags;
	u32 er, sr;

	sr = 1 << (31-src);
	FUNC5(&uic->lock, flags);
	/* ack level-triggered interrupts here */
	if (FUNC1(d))
		FUNC4(uic->dcrbase + UIC_SR, sr);
	er = FUNC3(uic->dcrbase + UIC_ER);
	er |= sr;
	FUNC4(uic->dcrbase + UIC_ER, er);
	FUNC6(&uic->lock, flags);
}