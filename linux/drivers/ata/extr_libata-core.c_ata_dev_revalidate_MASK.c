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
typedef  scalar_t__ u64 ;
struct ata_device {scalar_t__ n_sectors; scalar_t__ n_native_sectors; unsigned int class; int horkage; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 unsigned int ATA_DEV_ATA ; 
 unsigned int ATA_DEV_ATAPI ; 
 unsigned int ATA_DEV_SEMB ; 
 unsigned int ATA_DEV_ZAC ; 
 int /*<<< orphan*/  ATA_DFLAG_UNLOCK_HPA ; 
 int ATA_HORKAGE_BROKEN_HPA ; 
 int EIO ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_device*,char*,unsigned int,unsigned int) ; 
 int FUNC5 (struct ata_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_device*,char*,...) ; 

int FUNC7(struct ata_device *dev, unsigned int new_class,
		       unsigned int readid_flags)
{
	u64 n_sectors = dev->n_sectors;
	u64 n_native_sectors = dev->n_native_sectors;
	int rc;

	if (!FUNC2(dev))
		return -ENODEV;

	/* fail early if !ATA && !ATAPI to avoid issuing [P]IDENTIFY to PMP */
	if (FUNC0(new_class) &&
	    new_class != ATA_DEV_ATA &&
	    new_class != ATA_DEV_ATAPI &&
	    new_class != ATA_DEV_ZAC &&
	    new_class != ATA_DEV_SEMB) {
		FUNC4(dev, "class mismatch %u != %u\n",
			     dev->class, new_class);
		rc = -ENODEV;
		goto fail;
	}

	/* re-read ID */
	rc = FUNC5(dev, readid_flags);
	if (rc)
		goto fail;

	/* configure device according to the new ID */
	rc = FUNC1(dev);
	if (rc)
		goto fail;

	/* verify n_sectors hasn't changed */
	if (dev->class != ATA_DEV_ATA || !n_sectors ||
	    dev->n_sectors == n_sectors)
		return 0;

	/* n_sectors has changed */
	FUNC6(dev, "n_sectors mismatch %llu != %llu\n",
		     (unsigned long long)n_sectors,
		     (unsigned long long)dev->n_sectors);

	/*
	 * Something could have caused HPA to be unlocked
	 * involuntarily.  If n_native_sectors hasn't changed and the
	 * new size matches it, keep the device.
	 */
	if (dev->n_native_sectors == n_native_sectors &&
	    dev->n_sectors > n_sectors && dev->n_sectors == n_native_sectors) {
		FUNC6(dev,
			     "new n_sectors matches native, probably "
			     "late HPA unlock, n_sectors updated\n");
		/* use the larger n_sectors */
		return 0;
	}

	/*
	 * Some BIOSes boot w/o HPA but resume w/ HPA locked.  Try
	 * unlocking HPA in those cases.
	 *
	 * https://bugzilla.kernel.org/show_bug.cgi?id=15396
	 */
	if (dev->n_native_sectors == n_native_sectors &&
	    dev->n_sectors < n_sectors && n_sectors == n_native_sectors &&
	    !(dev->horkage & ATA_HORKAGE_BROKEN_HPA)) {
		FUNC6(dev,
			     "old n_sectors matches native, probably "
			     "late HPA lock, will try to unlock HPA\n");
		/* try unlocking HPA */
		dev->flags |= ATA_DFLAG_UNLOCK_HPA;
		rc = -EIO;
	} else
		rc = -ENODEV;

	/* restore original n_[native_]sectors and fail */
	dev->n_native_sectors = n_native_sectors;
	dev->n_sectors = n_sectors;
 fail:
	FUNC3(dev, "revalidation failed (errno=%d)\n", rc);
	return rc;
}