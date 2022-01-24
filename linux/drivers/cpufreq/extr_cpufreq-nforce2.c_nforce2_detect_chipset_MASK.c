#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PCI_ANY_ID ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_NVIDIA_NFORCE2 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_NVIDIA ; 
 TYPE_1__* nforce2_dev ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(void)
{
	nforce2_dev = FUNC0(PCI_VENDOR_ID_NVIDIA,
					PCI_DEVICE_ID_NVIDIA_NFORCE2,
					PCI_ANY_ID, PCI_ANY_ID, NULL);

	if (nforce2_dev == NULL)
		return -ENODEV;

	FUNC1("Detected nForce2 chipset revision %X\n",
		nforce2_dev->revision);
	FUNC1("FSB changing is maybe unstable and can lead to crashes and data loss\n");

	return 0;
}