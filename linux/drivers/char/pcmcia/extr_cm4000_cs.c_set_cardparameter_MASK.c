#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u_int8_t ;
struct cm4000_dev {int flags1; int baudv; int /*<<< orphan*/  atr; TYPE_2__* p_dev; } ;
struct TYPE_7__ {unsigned char stopbits; int /*<<< orphan*/  atr_len; int /*<<< orphan*/  atr; } ;
struct TYPE_6__ {TYPE_1__** resource; } ;
struct TYPE_5__ {unsigned int start; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct cm4000_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 TYPE_3__* card_fixups ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct cm4000_dev *dev)
{
	int i;
	unsigned int iobase = dev->p_dev->resource[0]->start;
	u_int8_t stopbits = 0x02; /* ISO default */

	FUNC1(3, dev, "-> set_cardparameter\n");

	dev->flags1 = dev->flags1 | (((dev->baudv - 1) & 0x0100) >> 8);
	FUNC6(dev->flags1, FUNC3(iobase));
	FUNC1(5, dev, "flags1 = 0x%02x\n", dev->flags1);

	/* set baudrate */
	FUNC6((unsigned char)((dev->baudv - 1) & 0xFF), FUNC2(iobase));

	FUNC1(5, dev, "baudv = %i -> write 0x%02x\n", dev->baudv,
	      ((dev->baudv - 1) & 0xFF));

	/* set stopbits */
	for (i = 0; i < FUNC0(card_fixups); i++) {
		if (!FUNC5(dev->atr, card_fixups[i].atr,
			    card_fixups[i].atr_len))
			stopbits = card_fixups[i].stopbits;
	}
	FUNC6(stopbits, FUNC4(iobase));

	FUNC1(3, dev, "<- set_cardparameter\n");
}