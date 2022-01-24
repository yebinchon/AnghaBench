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
struct TYPE_2__ {unsigned long min_bw; scalar_t__ bw_gran; } ;
struct rdt_resource {unsigned long default_ctrl; TYPE_1__ membw; } ;

/* Variables and functions */
 int FUNC0 (char*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static bool FUNC3(char *buf, unsigned long *data,
			    struct rdt_resource *r)
{
	unsigned long bw;
	int ret;

	ret = FUNC0(buf, 10, &bw);
	if (ret) {
		FUNC1("Non-decimal digit in MB value %s\n", buf);
		return false;
	}

	if (bw < r->membw.min_bw || bw > r->default_ctrl) {
		FUNC1("MB value %ld out of range [%d,%d]\n", bw,
				    r->membw.min_bw, r->default_ctrl);
		return false;
	}

	*data = FUNC2(bw, (unsigned long)r->membw.bw_gran);
	return true;
}