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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_iospace_start ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(int type, unsigned int busn,
				 unsigned int devfn, int where, int size,
				 u32 val)
{
	u32 data;

	/* two phase cycle, first we write address, then write data to
	 * another location, caller already has a spinlock so no need
	 * to add one here  */
	if (FUNC2(type, busn, devfn, where))
		return PCIBIOS_DEVICE_NOT_FOUND;
	FUNC5();

	data = FUNC6(FUNC0(pci_iospace_start));
	data = FUNC7(data, val, where, size);

	FUNC1(FUNC4(data), pci_iospace_start);
	FUNC9();
	/* no way to know the access is done, we have to wait */
	FUNC8(500);
	/* restore IO space normal behaviour */
	FUNC3(0, MPI_L2PCFG_REG);

	return PCIBIOS_SUCCESSFUL;
}