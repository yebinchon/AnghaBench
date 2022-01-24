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
struct rt305x_esw {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RT305X_ESW_POA_LINK_MASK ; 
 int RT305X_ESW_POA_LINK_SHIFT ; 
 int RT305X_ESW_PORT_ST_CHG ; 
 int /*<<< orphan*/  RT305X_ESW_REG_ISR ; 
 int /*<<< orphan*/  RT305X_ESW_REG_POA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct rt305x_esw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt305x_esw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_esw)
{
	struct rt305x_esw *esw = (struct rt305x_esw *)_esw;
	u32 status;

	status = FUNC1(esw, RT305X_ESW_REG_ISR);
	if (status & RT305X_ESW_PORT_ST_CHG) {
		u32 link = FUNC1(esw, RT305X_ESW_REG_POA);

		link >>= RT305X_ESW_POA_LINK_SHIFT;
		link &= RT305X_ESW_POA_LINK_MASK;
		FUNC0(esw->dev, "link changed 0x%02X\n", link);
	}
	FUNC2(esw, status, RT305X_ESW_REG_ISR);

	return IRQ_HANDLED;
}