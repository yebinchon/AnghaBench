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
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned long HV_EOK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC5 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct device *dev, unsigned long devhandle,
			       dma_addr_t dvma, unsigned long iotsb_num,
			       unsigned long entry, unsigned long npages)
{
	unsigned long num, flags;
	unsigned long ret;

	FUNC3(flags);
	do {
		if (dvma <= FUNC0(32)) {
			num = FUNC4(devhandle,
						    FUNC1(0, entry),
						    npages);
		} else {
			ret = FUNC5(devhandle, iotsb_num,
						    entry, npages, &num);
			if (FUNC7(ret != HV_EOK)) {
				FUNC6("pci_iotsb_demap() failed with error: %ld\n",
						   ret);
			}
		}
		entry += num;
		npages -= num;
	} while (npages != 0);
	FUNC2(flags);
}