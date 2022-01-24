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
struct fsl_msi_cascade_data {int index; struct fsl_msi* msi_data; } ;
struct fsl_msi {int feature; int /*<<< orphan*/  irqhost; int /*<<< orphan*/  msi_regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
#define  FSL_PIC_IP_IPIC 130 
 int FSL_PIC_IP_MASK ; 
#define  FSL_PIC_IP_MPIC 129 
#define  FSL_PIC_IP_VMPIC 128 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int NR_MSI_REG_MAX ; 
 int FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fsl_msi*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	unsigned int cascade_irq;
	struct fsl_msi *msi_data;
	int msir_index = -1;
	u32 msir_value = 0;
	u32 intr_index;
	u32 have_shift = 0;
	struct fsl_msi_cascade_data *cascade_data = data;
	irqreturn_t ret = IRQ_NONE;

	msi_data = cascade_data->msi_data;

	msir_index = cascade_data->index;

	if (msir_index >= NR_MSI_REG_MAX)
		cascade_irq = 0;

	switch (msi_data->feature & FSL_PIC_IP_MASK) {
	case FSL_PIC_IP_MPIC:
		msir_value = FUNC2(msi_data->msi_regs,
			msir_index * 0x10);
		break;
	case FSL_PIC_IP_IPIC:
		msir_value = FUNC2(msi_data->msi_regs, msir_index * 0x4);
		break;
#ifdef CONFIG_EPAPR_PARAVIRT
	case FSL_PIC_IP_VMPIC: {
		unsigned int ret;
		ret = fh_vmpic_get_msir(virq_to_hw(irq), &msir_value);
		if (ret) {
			pr_err("fsl-msi: fh_vmpic_get_msir() failed for "
			       "irq %u (ret=%u)\n", irq, ret);
			msir_value = 0;
		}
		break;
	}
#endif
	}

	while (msir_value) {
		intr_index = FUNC0(msir_value) - 1;

		cascade_irq = FUNC4(msi_data->irqhost,
				FUNC5(msi_data, msir_index,
					  intr_index + have_shift));
		if (cascade_irq) {
			FUNC3(cascade_irq);
			ret = IRQ_HANDLED;
		}
		have_shift += intr_index + 1;
		msir_value = msir_value >> (intr_index + 1);
	}

	return ret;
}