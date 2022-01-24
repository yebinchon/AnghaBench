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
struct mpic {int flags; scalar_t__* err_int_vecs; int /*<<< orphan*/  hc_err; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 int MPIC_FSL_HAS_EIMR ; 
 int MPIC_MAX_ERR ; 
 int MPIC_SECONDARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct mpic*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(struct mpic *mpic, unsigned int virq, irq_hw_number_t  hw)
{
	if ((mpic->flags & MPIC_FSL_HAS_EIMR) &&
	    (hw >= mpic->err_int_vecs[0] &&
	     hw <= mpic->err_int_vecs[MPIC_MAX_ERR - 1])) {
		FUNC0(mpic->flags & MPIC_SECONDARY);

		FUNC3("mpic: mapping as Error Interrupt\n");
		FUNC2(virq, mpic);
		FUNC1(virq, &mpic->hc_err,
					 handle_level_irq);
		return 1;
	}

	return 0;
}