#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_9__ {int num_counts; struct ftm_quaddec* priv; int /*<<< orphan*/  num_signals; int /*<<< orphan*/  signals; int /*<<< orphan*/ * counts; int /*<<< orphan*/ * ops; TYPE_1__* parent; int /*<<< orphan*/  name; } ;
struct ftm_quaddec {TYPE_4__ counter; int /*<<< orphan*/  ftm_quaddec_mutex; int /*<<< orphan*/  ftm_base; int /*<<< orphan*/  big_endian; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,struct ftm_quaddec*) ; 
 int FUNC4 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ftm_quaddec* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ftm_quaddec_cnt_ops ; 
 int /*<<< orphan*/  ftm_quaddec_counts ; 
 int /*<<< orphan*/  ftm_quaddec_disable ; 
 int /*<<< orphan*/  FUNC7 (struct ftm_quaddec*) ; 
 int /*<<< orphan*/  ftm_quaddec_signals ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,char*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct ftm_quaddec*) ; 
 int /*<<< orphan*/  FUNC12 (struct resource*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct ftm_quaddec *ftm;

	struct device_node *node = pdev->dev.of_node;
	struct resource *io;
	int ret;

	ftm = FUNC6(&pdev->dev, sizeof(*ftm), GFP_KERNEL);
	if (!ftm)
		return -ENOMEM;

	FUNC11(pdev, ftm);

	io = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!io) {
		FUNC1(&pdev->dev, "Failed to get memory region\n");
		return -ENODEV;
	}

	ftm->pdev = pdev;
	ftm->big_endian = FUNC9(node, "big-endian");
	ftm->ftm_base = FUNC5(&pdev->dev, io->start, FUNC12(io));

	if (!ftm->ftm_base) {
		FUNC1(&pdev->dev, "Failed to map memory region\n");
		return -EINVAL;
	}
	ftm->counter.name = FUNC2(&pdev->dev);
	ftm->counter.parent = &pdev->dev;
	ftm->counter.ops = &ftm_quaddec_cnt_ops;
	ftm->counter.counts = &ftm_quaddec_counts;
	ftm->counter.num_counts = 1;
	ftm->counter.signals = ftm_quaddec_signals;
	ftm->counter.num_signals = FUNC0(ftm_quaddec_signals);
	ftm->counter.priv = ftm;

	FUNC8(&ftm->ftm_quaddec_mutex);

	FUNC7(ftm);

	ret = FUNC3(&pdev->dev, ftm_quaddec_disable, ftm);
	if (ret)
		return ret;

	ret = FUNC4(&pdev->dev, &ftm->counter);
	if (ret)
		return ret;

	return 0;
}