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
struct uic {int /*<<< orphan*/  lock; scalar_t__ dcrbase; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ UIC_SR ; 
 struct uic* FUNC0 (struct irq_data*) ; 
 unsigned int FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct uic *uic = FUNC0(d);
	unsigned int src = FUNC1(d);
	unsigned long flags;

	FUNC3(&uic->lock, flags);
	FUNC2(uic->dcrbase + UIC_SR, 1 << (31-src));
	FUNC4(&uic->lock, flags);
}