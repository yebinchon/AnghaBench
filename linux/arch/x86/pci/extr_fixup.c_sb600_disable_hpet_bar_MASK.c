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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	u8 val;

	/*
	 * The SB600 and SB700 both share the same device
	 * ID, but the PM register 0x55 does something different
	 * for the SB700, so make sure we are dealing with the
	 * SB600 before touching the bit:
	 */

	FUNC2(dev, 0x08, &val);

	if (val < 0x2F) {
		FUNC1(0x55, 0xCD6);
		val = FUNC0(0xCD7);

		/* Set bit 7 in PM register 0x55 */
		FUNC1(0x55, 0xCD6);
		FUNC1(val | 0x80, 0xCD7);
	}
}