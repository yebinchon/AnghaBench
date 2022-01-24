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

/* Variables and functions */
 int /*<<< orphan*/  MPI_L2PCFG_REG ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_iospace_start ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(int type, unsigned int busn,
				unsigned int devfn, int where, int size,
				u32 *val)
{
	u32 data;

	/* two phase cycle, first we write address, then read data at
	 * another location, caller already has a spinlock so no need
	 * to add one here  */
	if (FUNC1(type, busn, devfn, where))
		return PCIBIOS_DEVICE_NOT_FOUND;
	FUNC3();
	data = FUNC4(FUNC0(pci_iospace_start));
	/* restore IO space normal behaviour */
	FUNC2(0, MPI_L2PCFG_REG);

	*val = FUNC5(data, where, size);

	return PCIBIOS_SUCCESSFUL;
}