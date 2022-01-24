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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 unsigned char MIN_PCI_LATENCY ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char) ; 
 unsigned char pci_lat ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pci_dev)
{
	unsigned char lat;
      
	// enable bus master accesses
	FUNC2(pci_dev);

	// frobnicate latency (upwards, usually)
	FUNC1 (pci_dev, PCI_LATENCY_TIMER, &lat);

	if (!pci_lat)
		pci_lat = (lat < MIN_PCI_LATENCY) ? MIN_PCI_LATENCY : lat;

	if (lat != pci_lat) {
		FUNC0 (KERN_INFO, "Changing PCI latency timer from %hu to %hu",
			lat, pci_lat);
		FUNC3(pci_dev, PCI_LATENCY_TIMER, pci_lat);
	}
}