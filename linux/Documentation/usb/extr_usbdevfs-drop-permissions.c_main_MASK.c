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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int USBDEVFS_CAP_DROP_PRIVILEGES ; 
 int /*<<< orphan*/  USBDEVFS_GET_CAPABILITIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*,int*) ; 

int FUNC8(int argc, char *argv[])
{
	uint32_t mask, caps;
	int c, fd;

	fd = FUNC4(argv[1], O_RDWR);
	if (fd < 0) {
		FUNC5("Failed to open file\n");
		goto err_fd;
	}

	/*
	 * check if dropping privileges is supported,
	 * bail on systems where the capability is not present
	 */
	FUNC3(fd, USBDEVFS_GET_CAPABILITIES, &caps);
	if (!(caps & USBDEVFS_CAP_DROP_PRIVILEGES)) {
		FUNC5("DROP_PRIVILEGES not supported\n");
		goto err;
	}

	/*
	 * Drop privileges but keep the ability to claim all
	 * free interfaces (i.e., those not used by kernel drivers)
	 */
	FUNC2(fd, -1U);

	FUNC5("Available options:\n"
		"[0] Exit now\n"
		"[1] Reset device. Should fail if device is in use\n"
		"[2] Claim 4 interfaces. Should succeed where not in use\n"
		"[3] Narrow interface permission mask\n"
		"Which option shall I run?: ");

	while (FUNC7("%d", &c) == 1) {
		switch (c) {
		case 0:
			goto exit;
		case 1:
			FUNC6(fd);
			break;
		case 2:
			FUNC0(fd);
			break;
		case 3:
			FUNC5("Insert new mask: ");
			FUNC7("%x", &mask);
			FUNC2(fd, mask);
			break;
		default:
			FUNC5("I don't recognize that\n");
		}

		FUNC5("Which test shall I run next?: ");
	}

exit:
	FUNC1(fd);
	return 0;

err:
	FUNC1(fd);
err_fd:
	return 1;
}