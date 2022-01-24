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
struct ata_link {int sata_spd_limit; int sata_spd; } ;
struct ata_device {int horkage; } ;

/* Variables and functions */
 int ATA_HORKAGE_1_5_GBPS ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*,char*,int /*<<< orphan*/ ) ; 
 struct ata_link* FUNC1 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_link*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ata_device *dev)
{
	struct ata_link *plink = FUNC1(dev);
	u32 target, target_limit;

	if (!FUNC2(plink))
		return 0;

	if (dev->horkage & ATA_HORKAGE_1_5_GBPS)
		target = 1;
	else
		return 0;

	target_limit = (1 << target) - 1;

	/* if already on stricter limit, no need to push further */
	if (plink->sata_spd_limit <= target_limit)
		return 0;

	plink->sata_spd_limit = target_limit;

	/* Request another EH round by returning -EAGAIN if link is
	 * going faster than the target speed.  Forward progress is
	 * guaranteed by setting sata_spd_limit to target_limit above.
	 */
	if (plink->sata_spd > target) {
		FUNC0(dev, "applying link speed limit horkage to %s\n",
			     FUNC3(target));
		return -EAGAIN;
	}
	return 0;
}