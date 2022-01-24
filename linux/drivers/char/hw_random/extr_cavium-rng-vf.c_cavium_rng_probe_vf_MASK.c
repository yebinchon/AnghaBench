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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int quality; int /*<<< orphan*/  read; int /*<<< orphan*/  name; } ;
struct cavium_rng {TYPE_1__ ops; int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cavium_rng_read ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct cavium_rng* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct cavium_rng*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct	pci_dev		*pdev,
			 const struct	pci_device_id	*id)
{
	struct	cavium_rng *rng;
	int	ret;

	rng = FUNC4(&pdev->dev, sizeof(*rng), GFP_KERNEL);
	if (!rng)
		return -ENOMEM;

	/* Map the RNG result */
	rng->result = FUNC6(pdev, 0, 0);
	if (!rng->result) {
		FUNC0(&pdev->dev, "Error iomap failed retrieving result.\n");
		return -ENOMEM;
	}

	rng->ops.name = FUNC3(&pdev->dev, GFP_KERNEL,
				       "cavium-rng-%s", FUNC1(&pdev->dev));
	if (!rng->ops.name)
		return -ENOMEM;

	rng->ops.read    = cavium_rng_read;
	rng->ops.quality = 1000;

	FUNC5(pdev, rng);

	ret = FUNC2(&pdev->dev, &rng->ops);
	if (ret) {
		FUNC0(&pdev->dev, "Error registering device as HWRNG.\n");
		return ret;
	}

	return 0;
}