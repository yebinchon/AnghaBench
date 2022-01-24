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
typedef  int u8 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int GD82559_1_IRQ ; 
 int /*<<< orphan*/  GD82559_1_PIN ; 
 int GD82559_2_IRQ ; 
 int /*<<< orphan*/  GD82559_2_PIN ; 
 int /*<<< orphan*/  IRQ_LEVEL_LOW ; 
 int /*<<< orphan*/  IRQ_SIGNAL_THROUGH ; 
 int /*<<< orphan*/  IRQ_TRIGGER_LEVEL ; 
 int UPD720100_INTA_IRQ ; 
 int /*<<< orphan*/  UPD720100_INTA_PIN ; 
 int UPD720100_INTB_IRQ ; 
 int /*<<< orphan*/  UPD720100_INTB_PIN ; 
 int UPD720100_INTC_IRQ ; 
 int /*<<< orphan*/  UPD720100_INTC_PIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(const struct pci_dev *dev, u8 slot, u8 pin)
{
	int irq = -1;

	switch (slot) {
	case 12:
		FUNC1(GD82559_1_PIN,
				       IRQ_TRIGGER_LEVEL,
				       IRQ_SIGNAL_THROUGH);
		FUNC0(GD82559_1_PIN, IRQ_LEVEL_LOW);
		irq = GD82559_1_IRQ;
		break;
	case 13:
		FUNC1(GD82559_2_PIN,
				       IRQ_TRIGGER_LEVEL,
				       IRQ_SIGNAL_THROUGH);
		FUNC0(GD82559_2_PIN, IRQ_LEVEL_LOW);
		irq = GD82559_2_IRQ;
		break;
	case 14:
		switch (pin) {
		case 1:
			FUNC1(UPD720100_INTA_PIN,
					       IRQ_TRIGGER_LEVEL,
					       IRQ_SIGNAL_THROUGH);
			FUNC0(UPD720100_INTA_PIN,
					     IRQ_LEVEL_LOW);
			irq = UPD720100_INTA_IRQ;
			break;
		case 2:
			FUNC1(UPD720100_INTB_PIN,
					       IRQ_TRIGGER_LEVEL,
					       IRQ_SIGNAL_THROUGH);
			FUNC0(UPD720100_INTB_PIN,
					     IRQ_LEVEL_LOW);
			irq = UPD720100_INTB_IRQ;
			break;
		case 3:
			FUNC1(UPD720100_INTC_PIN,
					       IRQ_TRIGGER_LEVEL,
					       IRQ_SIGNAL_THROUGH);
			FUNC0(UPD720100_INTC_PIN,
					     IRQ_LEVEL_LOW);
			irq = UPD720100_INTC_IRQ;
			break;
		default:
			break;
		}
		break;
	default:
		break;
	}

	return irq;
}