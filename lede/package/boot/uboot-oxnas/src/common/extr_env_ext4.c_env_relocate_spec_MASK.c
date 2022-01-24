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
typedef  int /*<<< orphan*/  uchar ;
typedef  int /*<<< orphan*/  block_dev_desc_t ;

/* Variables and functions */
 int CONFIG_ENV_SIZE ; 
 int EXT4_ENV_DEVICE ; 
 char* EXT4_ENV_FILE ; 
 char* EXT4_ENV_INTERFACE ; 
 int EXT4_ENV_PART ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	char buf[CONFIG_ENV_SIZE];
	block_dev_desc_t *dev_desc = NULL;
	int dev = EXT4_ENV_DEVICE;
	int part = EXT4_ENV_PART;
	int err;

	dev_desc = FUNC4(EXT4_ENV_INTERFACE, dev);
	if (dev_desc == NULL) {
		FUNC5("Failed to find %s%d\n",
			EXT4_ENV_INTERFACE, dev);
		FUNC6(NULL);
		return;
	}

	err = FUNC2(dev_desc, part);
	if (err) {
		FUNC5("Failed to register %s%d:%d\n",
			EXT4_ENV_INTERFACE, dev, part);
		FUNC6(NULL);
		return;
	}

	err = FUNC1(EXT4_ENV_FILE, (uchar *)&buf, 0, CONFIG_ENV_SIZE);
	FUNC3();

	if (err == -1) {
		FUNC5("\n** Unable to read \"%s\" from %s%d:%d **\n",
			EXT4_ENV_FILE, EXT4_ENV_INTERFACE, dev, part);
		FUNC6(NULL);
		return;
	}

	FUNC0(buf, 1);
}