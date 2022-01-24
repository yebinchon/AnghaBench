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
struct device {int dummy; } ;

/* Variables and functions */
 int IR_FIRMODE ; 
 int IR_OFF ; 
 int IR_SIRMODE ; 
 int MST_MSCWR1 ; 
 int MST_MSCWR1_IRDA_FIR ; 
 int MST_MSCWR1_IRDA_FULL ; 
 int MST_MSCWR1_IRDA_MASK ; 
 int MST_MSCWR1_IRDA_OFF ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 

__attribute__((used)) static void FUNC3(struct device *dev, int mode)
{
	unsigned long flags;

	FUNC1(flags);
	if (mode & IR_SIRMODE) {
		MST_MSCWR1 &= ~MST_MSCWR1_IRDA_FIR;
	} else if (mode & IR_FIRMODE) {
		MST_MSCWR1 |= MST_MSCWR1_IRDA_FIR;
	}
	FUNC2(dev, mode);
	if (mode & IR_OFF) {
		MST_MSCWR1 = (MST_MSCWR1 & ~MST_MSCWR1_IRDA_MASK) | MST_MSCWR1_IRDA_OFF;
	} else {
		MST_MSCWR1 = (MST_MSCWR1 & ~MST_MSCWR1_IRDA_MASK) | MST_MSCWR1_IRDA_FULL;
	}
	FUNC0(flags);
}