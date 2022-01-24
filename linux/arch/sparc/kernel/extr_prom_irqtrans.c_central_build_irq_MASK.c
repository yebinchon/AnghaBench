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
struct resource {int start; } ;
struct platform_device {struct resource* resource; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 struct platform_device* FUNC1 (struct device_node*) ; 
 scalar_t__ FUNC2 (struct device_node*,char*) ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC5(struct device_node *dp,
				      unsigned int ino,
				      void *_data)
{
	struct device_node *central_dp = _data;
	struct platform_device *central_op = FUNC1(central_dp);
	struct resource *res;
	unsigned long imap, iclr;
	u32 tmp;

	if (FUNC2(dp, "eeprom")) {
		res = &central_op->resource[5];
	} else if (FUNC2(dp, "zs")) {
		res = &central_op->resource[4];
	} else if (FUNC2(dp, "clock-board")) {
		res = &central_op->resource[3];
	} else {
		return ino;
	}

	imap = res->start + 0x00UL;
	iclr = res->start + 0x10UL;

	/* Set the INO state to idle, and disable.  */
	FUNC4(0, iclr);
	FUNC3(iclr);

	tmp = FUNC3(imap);
	tmp &= ~0x80000000;
	FUNC4(tmp, imap);

	return FUNC0(0, iclr, imap);
}