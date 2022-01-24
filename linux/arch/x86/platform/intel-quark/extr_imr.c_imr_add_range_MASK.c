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
struct imr_regs {unsigned int rmask; unsigned int wmask; void* addr_hi; void* addr_lo; } ;
struct imr_device {int init; unsigned int max_imr; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 unsigned int IMR_READ_ACCESS_ALL ; 
 unsigned int IMR_WRITE_ACCESS_ALL ; 
 scalar_t__ FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (scalar_t__,struct imr_regs*) ; 
 int FUNC2 (scalar_t__,size_t) ; 
 struct imr_device imr_dev ; 
 scalar_t__ FUNC3 (struct imr_regs*) ; 
 size_t FUNC4 (size_t) ; 
 int FUNC5 (struct imr_device*,unsigned int,struct imr_regs*) ; 
 int FUNC6 (struct imr_device*,int,struct imr_regs*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,scalar_t__*,scalar_t__*,size_t,unsigned int,unsigned int) ; 

int FUNC11(phys_addr_t base, size_t size,
		  unsigned int rmask, unsigned int wmask)
{
	phys_addr_t end;
	unsigned int i;
	struct imr_device *idev = &imr_dev;
	struct imr_regs imr;
	size_t raw_size;
	int reg;
	int ret;

	if (FUNC0(idev->init == false, "driver not initialized"))
		return -ENODEV;

	ret = FUNC2(base, size);
	if (ret)
		return ret;

	/* Tweak the size value. */
	raw_size = FUNC4(size);
	end = base + raw_size;

	/*
	 * Check for reserved IMR value common to firmware, kernel and grub
	 * indicating a disabled IMR.
	 */
	imr.addr_lo = FUNC9(base);
	imr.addr_hi = FUNC9(end);
	imr.rmask = rmask;
	imr.wmask = wmask;
	if (!FUNC3(&imr))
		return -ENOTSUPP;

	FUNC7(&idev->lock);

	/*
	 * Find a free IMR while checking for an existing overlapping range.
	 * Note there's no restriction in silicon to prevent IMR overlaps.
	 * For the sake of simplicity and ease in defining/debugging an IMR
	 * memory map we exclude IMR overlaps.
	 */
	reg = -1;
	for (i = 0; i < idev->max_imr; i++) {
		ret = FUNC5(idev, i, &imr);
		if (ret)
			goto failed;

		/* Find overlap @ base or end of requested range. */
		ret = -EINVAL;
		if (FUNC3(&imr)) {
			if (FUNC1(base, &imr))
				goto failed;
			if (FUNC1(end, &imr))
				goto failed;
		} else {
			reg = i;
		}
	}

	/* Error out if we have no free IMR entries. */
	if (reg == -1) {
		ret = -ENOMEM;
		goto failed;
	}

	FUNC10("add %d phys %pa-%pa size %zx mask 0x%08x wmask 0x%08x\n",
		 reg, &base, &end, raw_size, rmask, wmask);

	/* Enable IMR at specified range and access mask. */
	imr.addr_lo = FUNC9(base);
	imr.addr_hi = FUNC9(end);
	imr.rmask = rmask;
	imr.wmask = wmask;

	ret = FUNC6(idev, reg, &imr);
	if (ret < 0) {
		/*
		 * In the highly unlikely event iosf_mbi_write failed
		 * attempt to rollback the IMR setup skipping the trapping
		 * of further IOSF write failures.
		 */
		imr.addr_lo = 0;
		imr.addr_hi = 0;
		imr.rmask = IMR_READ_ACCESS_ALL;
		imr.wmask = IMR_WRITE_ACCESS_ALL;
		FUNC6(idev, reg, &imr);
	}
failed:
	FUNC8(&idev->lock);
	return ret;
}