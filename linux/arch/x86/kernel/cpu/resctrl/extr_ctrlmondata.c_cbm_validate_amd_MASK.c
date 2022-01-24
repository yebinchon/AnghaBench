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
typedef  unsigned long u32 ;
struct rdt_resource {unsigned long default_ctrl; } ;

/* Variables and functions */
 int FUNC0 (char*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

bool FUNC3(char *buf, u32 *data, struct rdt_resource *r)
{
	unsigned long val;
	int ret;

	ret = FUNC0(buf, 16, &val);
	if (ret) {
		FUNC1("Non-hex character in the mask %s\n", buf);
		return false;
	}

	if (val > r->default_ctrl) {
		FUNC2("Mask out of range\n");
		return false;
	}

	*data = val;
	return true;
}