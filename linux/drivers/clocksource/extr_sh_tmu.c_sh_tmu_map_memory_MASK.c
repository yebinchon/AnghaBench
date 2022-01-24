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
struct sh_tmu_device {int /*<<< orphan*/ * mapbase; TYPE_1__* pdev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 

__attribute__((used)) static int FUNC4(struct sh_tmu_device *tmu)
{
	struct resource *res;

	res = FUNC2(tmu->pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC0(&tmu->pdev->dev, "failed to get I/O memory\n");
		return -ENXIO;
	}

	tmu->mapbase = FUNC1(res->start, FUNC3(res));
	if (tmu->mapbase == NULL)
		return -ENXIO;

	return 0;
}