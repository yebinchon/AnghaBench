#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct driver_data {int /*<<< orphan*/  remove_list; TYPE_2__* work; scalar_t__ isr_workq; int /*<<< orphan*/  dd_flag; int /*<<< orphan*/  queue; TYPE_1__* pdev; int /*<<< orphan*/  irq_workers_active; int /*<<< orphan*/  bdev; int /*<<< orphan*/  sr; int /*<<< orphan*/  online_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  cpu_binding; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int MTIP_ABAR ; 
 int /*<<< orphan*/  MTIP_DDF_REMOVAL_BIT ; 
 int /*<<< orphan*/  MTIP_DDF_REMOVE_PENDING_BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  dev_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC7 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 struct driver_data* FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  removing_list ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC23(struct pci_dev *pdev)
{
	struct driver_data *dd = FUNC15(pdev);
	unsigned long flags, to;

	FUNC18(MTIP_DDF_REMOVAL_BIT, &dd->dd_flag);

	FUNC19(&dev_lock, flags);
	FUNC9(&dd->online_list);
	FUNC8(&dd->remove_list, &removing_list);
	FUNC20(&dev_lock, flags);

	FUNC13(pdev);
	FUNC21(dd->pdev->irq);

	/* Spin until workers are done */
	to = jiffies + FUNC10(4000);
	do {
		FUNC11(20);
	} while (FUNC0(&dd->irq_workers_active) != 0 &&
		FUNC22(jiffies, to));

	if (!dd->sr)
		FUNC6(dd->bdev);

	if (FUNC0(&dd->irq_workers_active) != 0) {
		FUNC3(&dd->pdev->dev,
			"Completion workers still active!\n");
	}

	FUNC1(dd->queue);
	FUNC18(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag);

	/* Clean up the block layer. */
	FUNC12(dd);

	if (dd->isr_workq) {
		FUNC5(dd->isr_workq);
		FUNC2(dd->isr_workq);
		FUNC4(dd->work[0].cpu_binding);
		FUNC4(dd->work[1].cpu_binding);
		FUNC4(dd->work[2].cpu_binding);
	}

	FUNC14(pdev);

	FUNC19(&dev_lock, flags);
	FUNC9(&dd->remove_list);
	FUNC20(&dev_lock, flags);

	FUNC7(dd);

	FUNC17(pdev, 1 << MTIP_ABAR);
	FUNC16(pdev, NULL);
}