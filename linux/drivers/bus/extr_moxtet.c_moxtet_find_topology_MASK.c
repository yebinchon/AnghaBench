#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct moxtet {int* modules; int /*<<< orphan*/  dev; scalar_t__ count; } ;
typedef  int /*<<< orphan*/  cnts ;
struct TYPE_2__ {int desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int TURRIS_MOX_CPU_ID_EMMC ; 
 int TURRIS_MOX_CPU_ID_SD ; 
 int TURRIS_MOX_MAX_MODULES ; 
 int TURRIS_MOX_MODULE_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_1__* mox_module_table ; 
 scalar_t__ FUNC5 (struct moxtet*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct moxtet *moxtet)
{
	u8 buf[TURRIS_MOX_MAX_MODULES];
	int cnts[TURRIS_MOX_MODULE_LAST];
	int i, ret;

	FUNC3(cnts, 0, sizeof(cnts));

	ret = FUNC6(FUNC7(moxtet->dev), buf, TURRIS_MOX_MAX_MODULES);
	if (ret < 0)
		return ret;

	if (buf[0] == TURRIS_MOX_CPU_ID_EMMC) {
		FUNC1(moxtet->dev, "Found MOX A (eMMC CPU) module\n");
	} else if (buf[0] == TURRIS_MOX_CPU_ID_SD) {
		FUNC1(moxtet->dev, "Found MOX A (CPU) module\n");
	} else {
		FUNC0(moxtet->dev, "Invalid Turris MOX A CPU module 0x%02x\n",
			buf[0]);
		return -ENODEV;
	}

	moxtet->count = 0;

	for (i = 1; i < TURRIS_MOX_MAX_MODULES; ++i) {
		int id;

		if (buf[i] == 0xff)
			break;

		id = buf[i] & 0xf;

		moxtet->modules[i-1] = id;
		++moxtet->count;

		if (FUNC4(id)) {
			FUNC1(moxtet->dev, "Found %s module\n",
				 mox_module_table[id].desc);

			if (FUNC5(moxtet, i-1, id, cnts[id]++) < 0)
				FUNC0(moxtet->dev,
					"  Cannot set IRQ for module %s\n",
					mox_module_table[id].desc);
		} else {
			FUNC2(moxtet->dev,
				 "Unknown Moxtet module found (ID 0x%02x)\n",
				 id);
		}
	}

	return 0;
}