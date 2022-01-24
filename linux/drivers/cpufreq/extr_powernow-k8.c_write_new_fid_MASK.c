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
struct powernow_k8_data {int currvid; int plllock; int currfid; } ;

/* Variables and functions */
 int INVALID_FID_MASK ; 
 int INVALID_VID_MASK ; 
 int MSR_C_LO_INIT_FID_VID ; 
 int MSR_C_LO_VID_SHIFT ; 
 int /*<<< orphan*/  MSR_FIDVID_CTL ; 
 int PLL_LOCK_CONVERSION ; 
 int /*<<< orphan*/  FUNC0 (struct powernow_k8_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (struct powernow_k8_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct powernow_k8_data *data, u32 fid)
{
	u32 lo;
	u32 savevid = data->currvid;
	u32 i = 0;

	if ((fid & INVALID_FID_MASK) || (data->currvid & INVALID_VID_MASK)) {
		FUNC2("internal error - overflow on fid write\n");
		return 1;
	}

	lo = fid;
	lo |= (data->currvid << MSR_C_LO_VID_SHIFT);
	lo |= MSR_C_LO_INIT_FID_VID;

	FUNC1("writing fid 0x%x, lo 0x%x, hi 0x%x\n",
		fid, lo, data->plllock * PLL_LOCK_CONVERSION);

	do {
		FUNC4(MSR_FIDVID_CTL, lo, data->plllock * PLL_LOCK_CONVERSION);
		if (i++ > 100) {
			FUNC2("Hardware error - pending bit very stuck - no further pstate changes possible\n");
			return 1;
		}
	} while (FUNC3(data));

	FUNC0(data);

	if (savevid != data->currvid) {
		FUNC2("vid change on fid trans, old 0x%x, new 0x%x\n",
		       savevid, data->currvid);
		return 1;
	}

	if (fid != data->currfid) {
		FUNC2("fid trans failed, fid 0x%x, curr 0x%x\n", fid,
			data->currfid);
		return 1;
	}

	return 0;
}