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
typedef  scalar_t__ u32 ;
struct lpc_cycle_para {size_t csize; int /*<<< orphan*/  opflags; } ;
struct hisi_lpc_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FG_INCRADDR_LPC ; 
 size_t LPC_MAX_DWIDTH ; 
 unsigned long FUNC0 (struct hisi_lpc_dev*,unsigned long) ; 
 int FUNC1 (struct hisi_lpc_dev*,struct lpc_cycle_para*,unsigned long,unsigned char*,size_t) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC3(void *hostdata, unsigned long pio, size_t dwidth)
{
	struct hisi_lpc_dev *lpcdev = hostdata;
	struct lpc_cycle_para iopara;
	unsigned long addr;
	u32 rd_data = 0;
	int ret;

	if (!lpcdev || !dwidth || dwidth > LPC_MAX_DWIDTH)
		return ~0;

	addr = FUNC0(lpcdev, pio);

	iopara.opflags = FG_INCRADDR_LPC;
	iopara.csize = dwidth;

	ret = FUNC1(lpcdev, &iopara, addr,
				 (unsigned char *)&rd_data, dwidth);
	if (ret)
		return ~0;

	return FUNC2(rd_data);
}