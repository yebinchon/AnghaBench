#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; } ;
struct TYPE_5__ {unsigned int size; int size_value; } ;
struct TYPE_4__ {struct pci_dev* misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD64_GARTAPERTUREBASE ; 
 int FUNC0 (TYPE_2__*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  NVIDIA_X86_64_0_APBASE ; 
 int /*<<< orphan*/  NVIDIA_X86_64_1_APBASE1 ; 
 int /*<<< orphan*/  NVIDIA_X86_64_1_APBASE2 ; 
 int /*<<< orphan*/  NVIDIA_X86_64_1_APLIMIT1 ; 
 int /*<<< orphan*/  NVIDIA_X86_64_1_APLIMIT2 ; 
 int /*<<< orphan*/  NVIDIA_X86_64_1_APSIZE ; 
 int PCI_BASE_ADDRESS_MEM_MASK ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_2__* nforce3_sizes ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *pdev)
{
	u32 tmp, apbase, apbar, aplimit;
	struct pci_dev *dev1;
	int i, ret;
	unsigned size = FUNC2();

	FUNC3(&pdev->dev, "setting up Nforce3 AGP\n");

	dev1 = FUNC6(pdev->bus, FUNC1(11, 0));
	if (dev1 == NULL) {
		FUNC3(&pdev->dev, "can't find Nforce3 secondary device\n");
		return -ENODEV;
	}

	for (i = 0; i < FUNC0(nforce3_sizes); i++)
		if (nforce3_sizes[i].size == size)
			break;

	if (i == FUNC0(nforce3_sizes)) {
		FUNC3(&pdev->dev, "no NForce3 size found for %d\n", size);
		ret = -ENODEV;
		goto put;
	}

	FUNC7(dev1, NVIDIA_X86_64_1_APSIZE, &tmp);
	tmp &= ~(0xf);
	tmp |= nforce3_sizes[i].size_value;
	FUNC8(dev1, NVIDIA_X86_64_1_APSIZE, tmp);

	/* shadow x86-64 registers into NVIDIA registers */
	FUNC7 (FUNC4(0)->misc, AMD64_GARTAPERTUREBASE,
			       &apbase);

	/* if x86-64 aperture base is beyond 4G, exit here */
	if ( (apbase & 0x7fff) >> (32 - 25) ) {
		FUNC3(&pdev->dev, "aperture base > 4G\n");
		ret = -ENODEV;
		goto put;
	}

	apbase = (apbase & 0x7fff) << 25;

	FUNC7(pdev, NVIDIA_X86_64_0_APBASE, &apbar);
	apbar &= ~PCI_BASE_ADDRESS_MEM_MASK;
	apbar |= apbase;
	FUNC8(pdev, NVIDIA_X86_64_0_APBASE, apbar);

	aplimit = apbase + (size * 1024 * 1024) - 1;
	FUNC8(dev1, NVIDIA_X86_64_1_APBASE1, apbase);
	FUNC8(dev1, NVIDIA_X86_64_1_APLIMIT1, aplimit);
	FUNC8(dev1, NVIDIA_X86_64_1_APBASE2, apbase);
	FUNC8(dev1, NVIDIA_X86_64_1_APLIMIT2, aplimit);

	ret = 0;
put:
	FUNC5(dev1);

	return ret;
}