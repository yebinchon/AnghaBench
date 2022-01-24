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
typedef  int /*<<< orphan*/  u64 ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hwrng {char* name; int /*<<< orphan*/  data_read; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  init; } ;
struct octeon_rng {struct hwrng ops; void* result; void* control_status; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hwrng*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct octeon_rng* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  octeon_rng_cleanup ; 
 int /*<<< orphan*/  octeon_rng_data_read ; 
 int /*<<< orphan*/  octeon_rng_init ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct hwrng*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct resource *res_ports;
	struct resource *res_result;
	struct octeon_rng *rng;
	int ret;
	struct hwrng ops = {
		.name = "octeon",
		.init = octeon_rng_init,
		.cleanup = octeon_rng_cleanup,
		.data_read = octeon_rng_data_read
	};

	rng = FUNC3(&pdev->dev, sizeof(*rng), GFP_KERNEL);
	if (!rng)
		return -ENOMEM;

	res_ports = FUNC4(pdev, IORESOURCE_MEM, 0);
	if (!res_ports)
		return -ENOENT;

	res_result = FUNC4(pdev, IORESOURCE_MEM, 1);
	if (!res_result)
		return -ENOENT;


	rng->control_status = FUNC2(&pdev->dev,
						   res_ports->start,
						   sizeof(u64));
	if (!rng->control_status)
		return -ENOENT;

	rng->result = FUNC2(&pdev->dev,
					   res_result->start,
					   sizeof(u64));
	if (!rng->result)
		return -ENOENT;

	rng->ops = ops;

	FUNC5(pdev, &rng->ops);
	ret = FUNC1(&pdev->dev, &rng->ops);
	if (ret)
		return -ENOENT;

	FUNC0(&pdev->dev, "Octeon Random Number Generator\n");

	return 0;
}