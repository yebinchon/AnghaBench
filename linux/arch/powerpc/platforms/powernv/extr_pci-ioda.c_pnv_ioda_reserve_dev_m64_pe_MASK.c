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
struct resource {int start; int end; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int m64_base; int m64_segsize; } ;
struct pnv_phb {TYPE_1__ ioda; } ;
struct pci_dev {struct resource* resource; int /*<<< orphan*/  bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int PCI_ROM_RESOURCE ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 struct pci_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnv_phb*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pnv_phb*,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev,
					 unsigned long *pe_bitmap)
{
	struct pci_controller *hose = FUNC2(pdev->bus);
	struct pnv_phb *phb = hose->private_data;
	struct resource *r;
	resource_size_t base, sgsz, start, end;
	int segno, i;

	base = phb->ioda.m64_base;
	sgsz = phb->ioda.m64_segsize;
	for (i = 0; i <= PCI_ROM_RESOURCE; i++) {
		r = &pdev->resource[i];
		if (!r->parent || !FUNC4(phb, r))
			continue;

		start = FUNC0(r->start - base, sgsz);
		end = FUNC1(r->end - base, sgsz);
		for (segno = start / sgsz; segno < end / sgsz; segno++) {
			if (pe_bitmap)
				FUNC5(segno, pe_bitmap);
			else
				FUNC3(phb, segno);
		}
	}
}