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
struct resource {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_PROBE_ONLY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct resource*) ; 
 int /*<<< orphan*/  ltq_pci_mapped_cfg ; 
 int /*<<< orphan*/  ltq_pci_membase ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_controller ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct resource *res_cfg, *res_bridge;

	FUNC4(PCI_PROBE_ONLY);

	res_bridge = FUNC6(pdev, IORESOURCE_MEM, 1);
	ltq_pci_membase = FUNC2(&pdev->dev, res_bridge);
	if (FUNC0(ltq_pci_membase))
		return FUNC1(ltq_pci_membase);

	res_cfg = FUNC6(pdev, IORESOURCE_MEM, 0);
	ltq_pci_mapped_cfg = FUNC2(&pdev->dev, res_cfg);
	if (FUNC0(ltq_pci_mapped_cfg))
		return FUNC1(ltq_pci_mapped_cfg);

	FUNC3(pdev);

	FUNC5(&pci_controller, pdev->dev.of_node);
	FUNC7(&pci_controller);
	return 0;
}