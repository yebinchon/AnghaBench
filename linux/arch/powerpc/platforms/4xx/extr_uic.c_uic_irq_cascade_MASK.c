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
typedef  int /*<<< orphan*/  u32 ;
struct uic {int /*<<< orphan*/  irqhost; scalar_t__ dcrbase; } ;
struct irq_desc {int /*<<< orphan*/  lock; } ;
struct irq_data {int dummy; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_unmask ) (struct irq_data*) ;int /*<<< orphan*/  (* irq_ack ) (struct irq_data*) ;int /*<<< orphan*/  (* irq_mask_ack ) (struct irq_data*) ;int /*<<< orphan*/  (* irq_mask ) (struct irq_data*) ;} ;

/* Variables and functions */
 scalar_t__ UIC_MSR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 struct uic* FUNC3 (struct irq_desc*) ; 
 struct irq_data* FUNC4 (struct irq_desc*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 
 scalar_t__ FUNC7 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct irq_data*) ; 

__attribute__((used)) static void FUNC15(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC2(desc);
	struct irq_data *idata = FUNC4(desc);
	struct uic *uic = FUNC3(desc);
	u32 msr;
	int src;
	int subvirq;

	FUNC9(&desc->lock);
	if (FUNC7(idata))
		chip->irq_mask(idata);
	else
		chip->irq_mask_ack(idata);
	FUNC10(&desc->lock);

	msr = FUNC8(uic->dcrbase + UIC_MSR);
	if (!msr) /* spurious interrupt */
		goto uic_irq_ret;

	src = 32 - FUNC0(msr);

	subvirq = FUNC5(uic->irqhost, src);
	FUNC1(subvirq);

uic_irq_ret:
	FUNC9(&desc->lock);
	if (FUNC7(idata))
		chip->irq_ack(idata);
	if (!FUNC6(idata) && chip->irq_unmask)
		chip->irq_unmask(idata);
	FUNC10(&desc->lock);
}