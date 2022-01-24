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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DCRN_CONF_FIR_RWC ; 
 int /*<<< orphan*/  DCRN_CONF_RPERR0 ; 
 int /*<<< orphan*/  DCRN_CONF_RPERR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data) {
	FUNC2("Configuration Logic Error\n");
	FUNC2("CONF_FIR: 0x%08x\n", FUNC0(DCRN_CONF_FIR_RWC));
	FUNC2("RPERR0:   0x%08x\n", FUNC0(DCRN_CONF_RPERR0));
	FUNC2("RPERR1:   0x%08x\n", FUNC0(DCRN_CONF_RPERR1));
	FUNC1("Configuration Logic Error\n");
}