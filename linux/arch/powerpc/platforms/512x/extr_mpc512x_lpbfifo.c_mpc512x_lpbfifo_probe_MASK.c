#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct lpbfifo_data {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  enable; } ;
struct TYPE_12__ {int /*<<< orphan*/ * chan; int /*<<< orphan*/  irq; TYPE_7__* regs; int /*<<< orphan*/  regs_size; int /*<<< orphan*/  regs_phys; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int MPC512X_SCLPC_FIFO_RESET ; 
 int MPC512X_SCLPC_RESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 TYPE_7__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ lpbfifo ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mpc512x_lpbfifo_irq ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct resource r;
	int ret = 0;

	FUNC9(&lpbfifo, 0, sizeof(struct lpbfifo_data));
	FUNC14(&lpbfifo.lock);

	lpbfifo.chan = FUNC5(&pdev->dev, "rx-tx");
	if (lpbfifo.chan == NULL)
		return -EPROBE_DEFER;

	if (FUNC10(pdev->dev.of_node, 0, &r) != 0) {
		FUNC0(&pdev->dev, "bad 'reg' in 'sclpc' device tree node\n");
		ret = -ENODEV;
		goto err0;
	}

	lpbfifo.regs_phys = r.start;
	lpbfifo.regs_size = FUNC13(&r);

	if (!FUNC3(&pdev->dev, lpbfifo.regs_phys,
					lpbfifo.regs_size, DRV_NAME)) {
		FUNC0(&pdev->dev, "unable to request region\n");
		ret = -EBUSY;
		goto err0;
	}

	lpbfifo.regs = FUNC2(&pdev->dev,
					lpbfifo.regs_phys, lpbfifo.regs_size);
	if (!lpbfifo.regs) {
		FUNC0(&pdev->dev, "mapping registers failed\n");
		ret = -ENOMEM;
		goto err0;
	}

	FUNC11(&lpbfifo.regs->enable,
				MPC512X_SCLPC_RESET | MPC512X_SCLPC_FIFO_RESET);

	if (FUNC6(&pdev->dev) != 0) {
		FUNC0(&pdev->dev, "bad '/localbus' device tree node\n");
		ret = -ENODEV;
		goto err0;
	}

	lpbfifo.irq = FUNC8(pdev->dev.of_node, 0);
	if (!lpbfifo.irq) {
		FUNC0(&pdev->dev, "mapping irq failed\n");
		ret = -ENODEV;
		goto err0;
	}

	if (FUNC12(lpbfifo.irq, mpc512x_lpbfifo_irq, 0,
						DRV_NAME, &pdev->dev) != 0) {
		FUNC0(&pdev->dev, "requesting irq failed\n");
		ret = -ENODEV;
		goto err1;
	}

	FUNC1(&pdev->dev, "probe succeeded\n");
	return 0;

 err1:
	FUNC7(lpbfifo.irq);
 err0:
	FUNC4(lpbfifo.chan);
	return ret;
}