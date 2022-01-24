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
struct imr_regs {int addr_lo; int addr_hi; int /*<<< orphan*/  wmask; int /*<<< orphan*/  rmask; } ;
struct imr_device {int init; unsigned int max_imr; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int ENODEV ; 
 int IMR_LOCK ; 
 int /*<<< orphan*/  IMR_READ_ACCESS_ALL ; 
 int /*<<< orphan*/  IMR_WRITE_ACCESS_ALL ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int FUNC1 (scalar_t__,size_t) ; 
 struct imr_device imr_dev ; 
 int /*<<< orphan*/  FUNC2 (struct imr_regs*) ; 
 size_t FUNC3 (size_t) ; 
 int FUNC4 (struct imr_device*,unsigned int,struct imr_regs*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct imr_device*,int,struct imr_regs*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,scalar_t__*,scalar_t__*,size_t) ; 

__attribute__((used)) static int FUNC10(int reg, phys_addr_t base, size_t size)
{
	phys_addr_t end;
	bool found = false;
	unsigned int i;
	struct imr_device *idev = &imr_dev;
	struct imr_regs imr;
	size_t raw_size;
	int ret = 0;

	if (FUNC0(idev->init == false, "driver not initialized"))
		return -ENODEV;

	/*
	 * Validate address range if deleting by address, else we are
	 * deleting by index where base and size will be ignored.
	 */
	if (reg == -1) {
		ret = FUNC1(base, size);
		if (ret)
			return ret;
	}

	/* Tweak the size value. */
	raw_size = FUNC3(size);
	end = base + raw_size;

	FUNC7(&idev->lock);

	if (reg >= 0) {
		/* If a specific IMR is given try to use it. */
		ret = FUNC4(idev, reg, &imr);
		if (ret)
			goto failed;

		if (!FUNC2(&imr) || imr.addr_lo & IMR_LOCK) {
			ret = -ENODEV;
			goto failed;
		}
		found = true;
	} else {
		/* Search for match based on address range. */
		for (i = 0; i < idev->max_imr; i++) {
			ret = FUNC4(idev, i, &imr);
			if (ret)
				goto failed;

			if (!FUNC2(&imr) || imr.addr_lo & IMR_LOCK)
				continue;

			if ((FUNC5(imr.addr_lo) == base) &&
			    (FUNC5(imr.addr_hi) == end)) {
				found = true;
				reg = i;
				break;
			}
		}
	}

	if (!found) {
		ret = -ENODEV;
		goto failed;
	}

	FUNC9("remove %d phys %pa-%pa size %zx\n", reg, &base, &end, raw_size);

	/* Tear down the IMR. */
	imr.addr_lo = 0;
	imr.addr_hi = 0;
	imr.rmask = IMR_READ_ACCESS_ALL;
	imr.wmask = IMR_WRITE_ACCESS_ALL;

	ret = FUNC6(idev, reg, &imr);

failed:
	FUNC8(&idev->lock);
	return ret;
}