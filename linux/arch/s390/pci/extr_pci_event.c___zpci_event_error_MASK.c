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
struct zpci_dev {int /*<<< orphan*/  bus; } ;
struct zpci_ccdf_err {int /*<<< orphan*/  fid; int /*<<< orphan*/  pec; } ;
struct pci_dev {int /*<<< orphan*/  error_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZPCI_DEVFN ; 
 struct zpci_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct zpci_ccdf_err*,int) ; 

__attribute__((used)) static void FUNC7(struct zpci_ccdf_err *ccdf)
{
	struct zpci_dev *zdev = FUNC0(ccdf->fid);
	struct pci_dev *pdev = NULL;

	FUNC5("error CCDF:\n");
	FUNC6(ccdf, sizeof(*ccdf));

	if (zdev)
		pdev = FUNC2(zdev->bus, ZPCI_DEVFN);

	FUNC4("%s: Event 0x%x reports an error for PCI function 0x%x\n",
	       pdev ? FUNC3(pdev) : "n/a", ccdf->pec, ccdf->fid);

	if (!pdev)
		return;

	pdev->error_state = pci_channel_io_perm_failure;
	FUNC1(pdev);
}