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
struct pktcdvd_device {int mmc3_profile; unsigned int write_speed; unsigned int read_speed; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  USE_WCACHING ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct pktcdvd_device*,char*,...) ; 
 int FUNC2 (struct pktcdvd_device*,unsigned int*) ; 
 int FUNC3 (struct pktcdvd_device*,unsigned int*) ; 
 int FUNC4 (struct pktcdvd_device*) ; 
 int FUNC5 (struct pktcdvd_device*) ; 
 int FUNC6 (struct pktcdvd_device*,unsigned int,unsigned int) ; 
 int FUNC7 (struct pktcdvd_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pktcdvd_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pktcdvd_device *pd)
{
	int ret;
	unsigned int write_speed, media_write_speed, read_speed;

	ret = FUNC5(pd);
	if (ret) {
		FUNC1(2, pd, "failed probe\n");
		return ret;
	}

	ret = FUNC7(pd);
	if (ret) {
		FUNC1(1, pd, "failed saving write settings\n");
		return -EIO;
	}

	FUNC8(pd, USE_WCACHING);

	ret = FUNC2(pd, &write_speed);
	if (ret)
		write_speed = 16 * 177;
	switch (pd->mmc3_profile) {
		case 0x13: /* DVD-RW */
		case 0x1a: /* DVD+RW */
		case 0x12: /* DVD-RAM */
			FUNC1(1, pd, "write speed %ukB/s\n", write_speed);
			break;
		default:
			ret = FUNC3(pd, &media_write_speed);
			if (ret)
				media_write_speed = 16;
			write_speed = FUNC0(write_speed, media_write_speed * 177);
			FUNC1(1, pd, "write speed %ux\n", write_speed / 176);
			break;
	}
	read_speed = write_speed;

	ret = FUNC6(pd, write_speed, read_speed);
	if (ret) {
		FUNC1(1, pd, "couldn't set write speed\n");
		return -EIO;
	}
	pd->write_speed = write_speed;
	pd->read_speed = read_speed;

	ret = FUNC4(pd);
	if (ret) {
		FUNC1(1, pd, "Optimum Power Calibration failed\n");
	}

	return 0;
}