#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bt3c_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_state; int /*<<< orphan*/  hdev; TYPE_2__* p_dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ CONTROL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  XMIT_SENDING ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,int) ; 
 int FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bt3c_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct bt3c_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_inst)
{
	struct bt3c_info *info = dev_inst;
	unsigned int iobase;
	int iir;
	irqreturn_t r = IRQ_NONE;

	if (!info || !info->hdev)
		/* our irq handler is shared */
		return IRQ_NONE;

	iobase = info->p_dev->resource[0]->start;

	FUNC9(&(info->lock));

	iir = FUNC7(iobase + CONTROL);
	if (iir & 0x80) {
		int stat = FUNC2(iobase, 0x7001);

		if ((stat & 0xff) == 0x7f) {
			FUNC0("Very strange (stat=0x%04x)", stat);
		} else if ((stat & 0xff) != 0xff) {
			if (stat & 0x0020) {
				int status = FUNC2(iobase, 0x7002) & 0x10;
				FUNC5(info->hdev, "Antenna %s",
							status ? "out" : "in");
			}
			if (stat & 0x0001)
				FUNC3(info);
			if (stat & 0x0002) {
				FUNC6(XMIT_SENDING, &(info->tx_state));
				FUNC4(info);
			}

			FUNC1(iobase, 0x7001, 0x0000);

			FUNC8(iir, iobase + CONTROL);
		}
		r = IRQ_HANDLED;
	}

	FUNC10(&(info->lock));

	return r;
}