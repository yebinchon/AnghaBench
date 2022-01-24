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
typedef  int /*<<< orphan*/  devtype ;

/* Variables and functions */
 int MAX_PATH_LEN ; 
 int MAX_PROP_LEN ; 
 void* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (void*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void *FUNC3(void)
{
	void *devp;
	char devtype[MAX_PROP_LEN];
	char path[MAX_PATH_LEN];

	devp = FUNC0("/chosen");
	if (devp == NULL)
		goto err_out;

	if (FUNC1(devp, "linux,stdout-path", path, MAX_PATH_LEN) > 0 ||
		FUNC1(devp, "stdout-path", path, MAX_PATH_LEN) > 0) {
		devp = FUNC0(path);
		if (devp == NULL)
			goto err_out;

		if ((FUNC1(devp, "device_type", devtype, sizeof(devtype)) > 0)
				&& !FUNC2(devtype, "serial"))
			return devp;
	}
err_out:
	return NULL;
}