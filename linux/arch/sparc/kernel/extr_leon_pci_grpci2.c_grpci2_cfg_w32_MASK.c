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
typedef  int /*<<< orphan*/  u32 ;
struct grpci2_priv {unsigned int pci_conf; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  sts_cap; int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int STS_CFGERR ; 
 int STS_CFGERRVALID ; 
 unsigned int TGT ; 
 int /*<<< orphan*/  grpci2_dev_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct grpci2_priv *priv, unsigned int bus,
				unsigned int devfn, int where, u32 val)
{
	unsigned int *pci_conf;
	unsigned long flags;

	if (where & 0x3)
		return -EINVAL;

	if (bus == 0) {
		devfn += (0x8 * 6); /* start at AD16=Device0 */
	} else if (bus == TGT) {
		bus = 0;
		devfn = 0; /* special case: bridge controller itself */
	}

	/* Select bus */
	FUNC3(&grpci2_dev_lock, flags);
	FUNC2(priv->regs->ctrl, (FUNC1(priv->regs->ctrl) & ~(0xff << 16)) |
				   (bus << 16));
	FUNC4(&grpci2_dev_lock, flags);

	/* clear old status */
	FUNC2(priv->regs->sts_cap, (STS_CFGERR | STS_CFGERRVALID));

	pci_conf = (unsigned int *) (priv->pci_conf |
						(devfn << 8) | (where & 0xfc));
	FUNC0(pci_conf, FUNC5(val));

	/* Wait until GRPCI2 signals that CFG access is done, it should be
	 * done instantaneously unless a DMA operation is ongoing...
	 */
	while ((FUNC1(priv->regs->sts_cap) & STS_CFGERRVALID) == 0)
		;

	return 0;
}