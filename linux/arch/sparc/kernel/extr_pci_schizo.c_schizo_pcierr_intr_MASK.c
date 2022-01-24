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
struct pci_pbm_info {unsigned long pbm_regs; int /*<<< orphan*/  pci_bus; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PCI_ERR ; 
 unsigned long SCHIZO_PCIAFSR_BLK ; 
 unsigned long SCHIZO_PCIAFSR_BMSK ; 
 unsigned long SCHIZO_PCIAFSR_CFG ; 
 unsigned long SCHIZO_PCIAFSR_IO ; 
 unsigned long SCHIZO_PCIAFSR_MEM ; 
 unsigned long SCHIZO_PCIAFSR_PMA ; 
 unsigned long SCHIZO_PCIAFSR_PPERR ; 
 unsigned long SCHIZO_PCIAFSR_PRTRY ; 
 unsigned long SCHIZO_PCIAFSR_PTA ; 
 unsigned long SCHIZO_PCIAFSR_PTTO ; 
 unsigned long SCHIZO_PCIAFSR_PUNUS ; 
 unsigned long SCHIZO_PCIAFSR_SMA ; 
 unsigned long SCHIZO_PCIAFSR_SPERR ; 
 unsigned long SCHIZO_PCIAFSR_SRTRY ; 
 unsigned long SCHIZO_PCIAFSR_STA ; 
 unsigned long SCHIZO_PCIAFSR_STTO ; 
 unsigned long SCHIZO_PCIAFSR_SUNUS ; 
 unsigned long SCHIZO_PCI_AFAR ; 
 unsigned long SCHIZO_PCI_AFSR ; 
 int /*<<< orphan*/  FUNC0 (struct pci_pbm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_pbm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_pbm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_pbm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_pbm_info*) ; 
 unsigned long FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct pci_pbm_info *pbm = dev_id;
	unsigned long afsr_reg, afar_reg, base;
	unsigned long afsr, afar, error_bits;
	int reported;

	base = pbm->pbm_regs;

	afsr_reg = base + SCHIZO_PCI_AFSR;
	afar_reg = base + SCHIZO_PCI_AFAR;

	/* Latch error status. */
	afar = FUNC6(afar_reg);
	afsr = FUNC6(afsr_reg);

	/* Clear primary/secondary error status bits. */
	error_bits = afsr &
		(SCHIZO_PCIAFSR_PMA | SCHIZO_PCIAFSR_PTA |
		 SCHIZO_PCIAFSR_PRTRY | SCHIZO_PCIAFSR_PPERR |
		 SCHIZO_PCIAFSR_PTTO | SCHIZO_PCIAFSR_PUNUS |
		 SCHIZO_PCIAFSR_SMA | SCHIZO_PCIAFSR_STA |
		 SCHIZO_PCIAFSR_SRTRY | SCHIZO_PCIAFSR_SPERR |
		 SCHIZO_PCIAFSR_STTO | SCHIZO_PCIAFSR_SUNUS);
	if (!error_bits)
		return FUNC5(pbm);
	FUNC7(error_bits, afsr_reg);

	/* Log the error. */
	FUNC3("%s: PCI Error, primary error type[%s]\n",
	       pbm->name,
	       (((error_bits & SCHIZO_PCIAFSR_PMA) ?
		 "Master Abort" :
		 ((error_bits & SCHIZO_PCIAFSR_PTA) ?
		  "Target Abort" :
		  ((error_bits & SCHIZO_PCIAFSR_PRTRY) ?
		   "Excessive Retries" :
		   ((error_bits & SCHIZO_PCIAFSR_PPERR) ?
		    "Parity Error" :
		    ((error_bits & SCHIZO_PCIAFSR_PTTO) ?
		     "Timeout" :
		     ((error_bits & SCHIZO_PCIAFSR_PUNUS) ?
		      "Bus Unusable" : "???"))))))));
	FUNC3("%s: bytemask[%04lx] was_block(%d) space(%s)\n",
	       pbm->name,
	       (afsr & SCHIZO_PCIAFSR_BMSK) >> 32UL,
	       (afsr & SCHIZO_PCIAFSR_BLK) ? 1 : 0,
	       ((afsr & SCHIZO_PCIAFSR_CFG) ?
		"Config" :
		((afsr & SCHIZO_PCIAFSR_MEM) ?
		 "Memory" :
		 ((afsr & SCHIZO_PCIAFSR_IO) ?
		  "I/O" : "???"))));
	FUNC3("%s: PCI AFAR [%016lx]\n",
	       pbm->name, afar);
	FUNC3("%s: PCI Secondary errors [",
	       pbm->name);
	reported = 0;
	if (afsr & SCHIZO_PCIAFSR_SMA) {
		reported++;
		FUNC3("(Master Abort)");
	}
	if (afsr & SCHIZO_PCIAFSR_STA) {
		reported++;
		FUNC3("(Target Abort)");
	}
	if (afsr & SCHIZO_PCIAFSR_SRTRY) {
		reported++;
		FUNC3("(Excessive Retries)");
	}
	if (afsr & SCHIZO_PCIAFSR_SPERR) {
		reported++;
		FUNC3("(Parity Error)");
	}
	if (afsr & SCHIZO_PCIAFSR_STTO) {
		reported++;
		FUNC3("(Timeout)");
	}
	if (afsr & SCHIZO_PCIAFSR_SUNUS) {
		reported++;
		FUNC3("(Bus Unusable)");
	}
	if (!reported)
		FUNC3("(none)");
	FUNC3("]\n");

	/* For the error types shown, scan PBM's PCI bus for devices
	 * which have logged that error type.
	 */

	/* If we see a Target Abort, this could be the result of an
	 * IOMMU translation error of some sort.  It is extremely
	 * useful to log this information as usually it indicates
	 * a bug in the IOMMU support code or a PCI device driver.
	 */
	if (error_bits & (SCHIZO_PCIAFSR_PTA | SCHIZO_PCIAFSR_STA)) {
		FUNC4(pbm, PCI_ERR);
		FUNC2(pbm, pbm->pci_bus);
	}
	if (error_bits & (SCHIZO_PCIAFSR_PMA | SCHIZO_PCIAFSR_SMA))
		FUNC0(pbm, pbm->pci_bus);

	/* For excessive retries, PSYCHO/PBM will abort the device
	 * and there is no way to specifically check for excessive
	 * retries in the config space status registers.  So what
	 * we hope is that we'll catch it via the master/target
	 * abort events.
	 */

	if (error_bits & (SCHIZO_PCIAFSR_PPERR | SCHIZO_PCIAFSR_SPERR))
		FUNC1(pbm, pbm->pci_bus);

	return IRQ_HANDLED;
}