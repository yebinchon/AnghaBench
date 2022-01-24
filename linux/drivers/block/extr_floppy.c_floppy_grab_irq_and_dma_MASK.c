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
struct TYPE_2__ {int address; int /*<<< orphan*/  dor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FDCS ; 
 int /*<<< orphan*/  FD_DOR ; 
 int /*<<< orphan*/  FLOPPY_DMA ; 
 int /*<<< orphan*/  FLOPPY_IRQ ; 
 scalar_t__ N_FDC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int can_use_virtual_dma ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ fdc ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  floppy_wq ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int irqdma_allocated ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  usage_count ; 
 int use_virtual_dma ; 

__attribute__((used)) static int FUNC13(void)
{
	if (FUNC2(&usage_count) > 1)
		return 0;

	/*
	 * We might have scheduled a free_irq(), wait it to
	 * drain first:
	 */
	FUNC10(floppy_wq);

	if (FUNC7()) {
		FUNC0("Unable to grab IRQ%d for the floppy driver\n",
		       FLOPPY_IRQ);
		FUNC1(&usage_count);
		return -1;
	}
	if (FUNC6()) {
		FUNC0("Unable to grab DMA%d for the floppy driver\n",
		       FLOPPY_DMA);
		if (can_use_virtual_dma & 2)
			use_virtual_dma = can_use_virtual_dma = 1;
		if (!(can_use_virtual_dma & 1)) {
			FUNC4();
			FUNC1(&usage_count);
			return -1;
		}
	}

	for (fdc = 0; fdc < N_FDC; fdc++) {
		if (FDCS->address != -1) {
			if (FUNC9(fdc))
				goto cleanup;
		}
	}
	for (fdc = 0; fdc < N_FDC; fdc++) {
		if (FDCS->address != -1) {
			FUNC11(1);
			FUNC5(FDCS->dor, FD_DOR);
		}
	}
	fdc = 0;
	FUNC12(0, ~0, 8);	/* avoid immediate interrupt */

	for (fdc = 0; fdc < N_FDC; fdc++)
		if (FDCS->address != -1)
			FUNC5(FDCS->dor, FD_DOR);
	/*
	 * The driver will try and free resources and relies on us
	 * to know if they were allocated or not.
	 */
	fdc = 0;
	irqdma_allocated = 1;
	return 0;
cleanup:
	FUNC4();
	FUNC3();
	while (--fdc >= 0)
		FUNC8(fdc);
	FUNC1(&usage_count);
	return -1;
}