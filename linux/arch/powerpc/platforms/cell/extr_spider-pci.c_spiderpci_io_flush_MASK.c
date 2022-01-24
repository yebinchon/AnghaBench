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
typedef  int /*<<< orphan*/  u32 ;
struct spiderpci_iowa_private {scalar_t__ regs; } ;
struct iowa_bus {struct spiderpci_iowa_private* private; } ;

/* Variables and functions */
 scalar_t__ SPIDER_PCI_DUMMY_READ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct iowa_bus *bus)
{
	struct spiderpci_iowa_private *priv;
	u32 val;

	priv = bus->private;
	val = FUNC0(priv->regs + SPIDER_PCI_DUMMY_READ);
	FUNC1();
}