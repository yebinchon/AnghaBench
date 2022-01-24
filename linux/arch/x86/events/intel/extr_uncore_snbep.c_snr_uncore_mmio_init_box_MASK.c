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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct intel_uncore_box {int /*<<< orphan*/  io_addr; int /*<<< orphan*/  dieid; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  IVBEP_PMON_BOX_CTL_INT ; 
 int SNR_IMC_MMIO_BASE_MASK ; 
 int /*<<< orphan*/  SNR_IMC_MMIO_BASE_OFFSET ; 
 int SNR_IMC_MMIO_MEM0_MASK ; 
 int /*<<< orphan*/  SNR_IMC_MMIO_MEM0_OFFSET ; 
 int /*<<< orphan*/  SNR_IMC_MMIO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct intel_uncore_box*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct intel_uncore_box *box)
{
	struct pci_dev *pdev = FUNC2(box->dieid);
	unsigned int box_ctl = FUNC3(box);
	resource_size_t addr;
	u32 pci_dword;

	if (!pdev)
		return;

	FUNC1(pdev, SNR_IMC_MMIO_BASE_OFFSET, &pci_dword);
	addr = (pci_dword & SNR_IMC_MMIO_BASE_MASK) << 23;

	FUNC1(pdev, SNR_IMC_MMIO_MEM0_OFFSET, &pci_dword);
	addr |= (pci_dword & SNR_IMC_MMIO_MEM0_MASK) << 12;

	addr += box_ctl;

	box->io_addr = FUNC0(addr, SNR_IMC_MMIO_SIZE);
	if (!box->io_addr)
		return;

	FUNC4(IVBEP_PMON_BOX_CTL_INT, box->io_addr);
}