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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMUN_CRCS ; 
#define  CRCS_STAT_CHIP_RST_B 128 
 int CRCS_STAT_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data) {
	u32 crcs = FUNC0(CMUN_CRCS);
	switch (crcs & CRCS_STAT_MASK) {
	case CRCS_STAT_CHIP_RST_B:
		FUNC1("Received chassis-initiated reset request");
	default:
		FUNC1("Unknown external reset: CRCS=0x%x", crcs);
	}
}