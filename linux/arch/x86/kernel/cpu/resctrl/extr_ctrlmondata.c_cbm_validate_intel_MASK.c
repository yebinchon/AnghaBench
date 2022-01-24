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
typedef  unsigned long u32 ;
struct TYPE_2__ {unsigned int cbm_len; unsigned long min_cbm_bits; } ;
struct rdt_resource {unsigned long default_ctrl; TYPE_1__ cache; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long*,unsigned int) ; 
 unsigned int FUNC1 (unsigned long*,unsigned int,unsigned long) ; 
 unsigned long FUNC2 (unsigned long*,unsigned int,unsigned long) ; 
 int FUNC3 (char*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

bool FUNC6(char *buf, u32 *data, struct rdt_resource *r)
{
	unsigned long first_bit, zero_bit, val;
	unsigned int cbm_len = r->cache.cbm_len;
	int ret;

	ret = FUNC3(buf, 16, &val);
	if (ret) {
		FUNC4("Non-hex character in the mask %s\n", buf);
		return false;
	}

	if (val == 0 || val > r->default_ctrl) {
		FUNC5("Mask out of range\n");
		return false;
	}

	first_bit = FUNC0(&val, cbm_len);
	zero_bit = FUNC2(&val, cbm_len, first_bit);

	if (FUNC1(&val, cbm_len, zero_bit) < cbm_len) {
		FUNC4("The mask %lx has non-consecutive 1-bits\n", val);
		return false;
	}

	if ((zero_bit - first_bit) < r->cache.min_cbm_bits) {
		FUNC4("Need at least %d bits in the mask\n",
				    r->cache.min_cbm_bits);
		return false;
	}

	*data = val;
	return true;
}