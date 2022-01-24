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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_DIVIL_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	/* writing 1 to the LSB of this MSR causes a hard reset */
	FUNC1(MSR_DIVIL_SOFT_RESET, 1ULL);
	FUNC0(50); /* shouldn't get here but be safe and spin a while */
}