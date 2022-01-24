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
typedef  int u64 ;
struct cpc_reg {int bit_offset; scalar_t__ bit_width; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int*) ; 

int FUNC2(int cpunum, struct cpc_reg *reg, u64 *val)
{
	int err;

	err = FUNC1(cpunum, reg->address, val);
	if (!err) {
		u64 mask = FUNC0(reg->bit_offset + reg->bit_width - 1,
				       reg->bit_offset);

		*val &= mask;
		*val >>= reg->bit_offset;
	}
	return err;
}