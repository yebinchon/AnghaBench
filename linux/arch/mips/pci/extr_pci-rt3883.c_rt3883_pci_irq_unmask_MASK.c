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
struct rt3883_pci_controller {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT3883_PCI_REG_PCIENA ; 
 struct rt3883_pci_controller* FUNC1 (struct irq_data*) ; 
 int FUNC2 (struct rt3883_pci_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt3883_pci_controller*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct rt3883_pci_controller *rpc;
	u32 t;

	rpc = FUNC1(d);

	t = FUNC2(rpc, RT3883_PCI_REG_PCIENA);
	FUNC3(rpc, t | FUNC0(d->hwirq), RT3883_PCI_REG_PCIENA);
	/* flush write */
	FUNC2(rpc, RT3883_PCI_REG_PCIENA);
}