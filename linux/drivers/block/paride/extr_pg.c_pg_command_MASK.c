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
struct pg {int /*<<< orphan*/  pi; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct pg*) ; 
 int STAT_BUSY ; 
 int STAT_DRQ ; 
 scalar_t__ FUNC1 (struct pg*,int,int,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (struct pg*,int) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC7 (struct pg*,int,int) ; 

__attribute__((used)) static int FUNC8(struct pg *dev, char *cmd, int dlen, unsigned long tmo)
{
	int k;

	FUNC2(dev->pi);

	FUNC7(dev, 6, FUNC0(dev));

	if (FUNC1(dev, STAT_BUSY | STAT_DRQ, 0, tmo, "before command"))
		goto fail;

	FUNC7(dev, 4, dlen % 256);
	FUNC7(dev, 5, dlen / 256);
	FUNC7(dev, 7, 0xa0);	/* ATAPI packet command */

	if (FUNC1(dev, STAT_BUSY, STAT_DRQ, tmo, "command DRQ"))
		goto fail;

	if (FUNC6(dev, 2) != 1) {
		FUNC5("%s: command phase error\n", dev->name);
		goto fail;
	}

	FUNC4(dev->pi, cmd, 12);

	if (verbose > 1) {
		FUNC5("%s: Command sent, dlen=%d packet= ", dev->name, dlen);
		for (k = 0; k < 12; k++)
			FUNC5("%02x ", cmd[k] & 0xff);
		FUNC5("\n");
	}
	return 0;
fail:
	FUNC3(dev->pi);
	return -1;
}