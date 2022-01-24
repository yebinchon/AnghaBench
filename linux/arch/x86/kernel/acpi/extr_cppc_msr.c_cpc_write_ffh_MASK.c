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
typedef  int /*<<< orphan*/  u64 ;
struct cpc_reg {int /*<<< orphan*/  address; int /*<<< orphan*/  bit_offset; scalar_t__ bit_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(int cpunum, struct cpc_reg *reg, u64 val)
{
	u64 rd_val;
	int err;

	err = FUNC1(cpunum, reg->address, &rd_val);
	if (!err) {
		u64 mask = FUNC0(reg->bit_offset + reg->bit_width - 1,
				       reg->bit_offset);

		val <<= reg->bit_offset;
		val &= mask;
		rd_val &= ~mask;
		rd_val |= val;
		err = FUNC2(cpunum, reg->address, rd_val);
	}
	return err;
}