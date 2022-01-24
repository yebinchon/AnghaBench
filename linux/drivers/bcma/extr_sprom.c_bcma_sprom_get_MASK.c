#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/  core; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct bcma_bus {int /*<<< orphan*/  sprom; TYPE_2__ drv_cc; TYPE_1__ chipinfo; } ;

/* Variables and functions */
 int FUNC0 (size_t const*) ; 
 int /*<<< orphan*/  BCMA_CC_SPROM ; 
 scalar_t__ BCMA_CHIP_ID_BCM4331 ; 
 scalar_t__ BCMA_CHIP_ID_BCM43431 ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  SSB_SPROMSIZE_WORDS_R10 130 
#define  SSB_SPROMSIZE_WORDS_R11 129 
#define  SSB_SPROMSIZE_WORDS_R4 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_bus*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bcma_bus*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcma_bus*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC7 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC8 (struct bcma_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int FUNC9 (struct bcma_bus*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct bcma_bus*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct bcma_bus *bus)
{
	u16 offset = BCMA_CC_SPROM;
	u16 *sprom;
	static const size_t sprom_sizes[] = {
		SSB_SPROMSIZE_WORDS_R4,
		SSB_SPROMSIZE_WORDS_R10,
		SSB_SPROMSIZE_WORDS_R11,
	};
	int i, err = 0;

	if (!bus->drv_cc.core)
		return -EOPNOTSUPP;

	if (!FUNC4(bus)) {
		bool sprom_onchip;

		/*
		 * External SPROM takes precedence so check
		 * on-chip OTP only when no external SPROM
		 * is present.
		 */
		sprom_onchip = FUNC6(bus);
		if (sprom_onchip) {
			/* determine offset */
			offset = FUNC7(bus);
		}
		if (!offset || !sprom_onchip) {
			/*
			 * Maybe there is no SPROM on the device?
			 * Now we ask the arch code if there is some sprom
			 * available for this device in some other storage.
			 */
			err = FUNC3(bus, &bus->sprom);
			return err;
		}
	}

	if (bus->chipinfo.id == BCMA_CHIP_ID_BCM4331 ||
	    bus->chipinfo.id == BCMA_CHIP_ID_BCM43431)
		FUNC1(&bus->drv_cc, false);

	FUNC2(bus, "SPROM offset 0x%x\n", offset);
	for (i = 0; i < FUNC0(sprom_sizes); i++) {
		size_t words = sprom_sizes[i];

		sprom = FUNC11(words, sizeof(u16), GFP_KERNEL);
		if (!sprom)
			return -ENOMEM;

		FUNC8(bus, offset, sprom, words);
		err = FUNC9(bus, sprom, words);
		if (!err)
			break;

		FUNC12(sprom);
	}

	if (bus->chipinfo.id == BCMA_CHIP_ID_BCM4331 ||
	    bus->chipinfo.id == BCMA_CHIP_ID_BCM43431)
		FUNC1(&bus->drv_cc, true);

	if (err) {
		FUNC10(bus, "Invalid SPROM read from the PCIe card, trying to use fallback SPROM\n");
		err = FUNC3(bus, &bus->sprom);
	} else {
		FUNC5(bus, sprom);
		FUNC12(sprom);
	}

	return err;
}