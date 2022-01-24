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
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int BDEVT_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 

__attribute__((used)) static char *FUNC3(dev_t devt, char *buf)
{
	if (FUNC0(devt) <= 0xff && FUNC1(devt) <= 0xff) {
		char tbuf[BDEVT_SIZE];
		FUNC2(tbuf, BDEVT_SIZE, "%02x%02x", FUNC0(devt), FUNC1(devt));
		FUNC2(buf, BDEVT_SIZE, "%-9s", tbuf);
	} else
		FUNC2(buf, BDEVT_SIZE, "%03x:%05x", FUNC0(devt), FUNC1(devt));

	return buf;
}