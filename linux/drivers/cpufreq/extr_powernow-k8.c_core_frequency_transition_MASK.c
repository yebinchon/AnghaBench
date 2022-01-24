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
struct powernow_k8_data {int currvid; int currfid; } ;

/* Variables and functions */
 int LO_FID_TABLE_TOP ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 scalar_t__ FUNC3 (struct powernow_k8_data*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct powernow_k8_data*,int) ; 

__attribute__((used)) static int FUNC6(struct powernow_k8_data *data, u32 reqfid)
{
	u32 vcoreqfid, vcocurrfid, vcofiddiff;
	u32 fid_interval, savevid = data->currvid;

	if (data->currfid == reqfid) {
		FUNC2("ph2 null fid transition 0x%x\n", data->currfid);
		return 0;
	}

	FUNC1("ph2 (cpu%d): starting, currfid 0x%x, currvid 0x%x, reqfid 0x%x\n",
		FUNC4(),
		data->currfid, data->currvid, reqfid);

	vcoreqfid = FUNC0(reqfid);
	vcocurrfid = FUNC0(data->currfid);
	vcofiddiff = vcocurrfid > vcoreqfid ? vcocurrfid - vcoreqfid
	    : vcoreqfid - vcocurrfid;

	if ((reqfid <= LO_FID_TABLE_TOP) && (data->currfid <= LO_FID_TABLE_TOP))
		vcofiddiff = 0;

	while (vcofiddiff > 2) {
		(data->currfid & 1) ? (fid_interval = 1) : (fid_interval = 2);

		if (reqfid > data->currfid) {
			if (data->currfid > LO_FID_TABLE_TOP) {
				if (FUNC5(data,
						data->currfid + fid_interval))
					return 1;
			} else {
				if (FUNC5
				    (data,
				     2 + FUNC0(data->currfid)))
					return 1;
			}
		} else {
			if (FUNC5(data, data->currfid - fid_interval))
				return 1;
		}

		vcocurrfid = FUNC0(data->currfid);
		vcofiddiff = vcocurrfid > vcoreqfid ? vcocurrfid - vcoreqfid
		    : vcoreqfid - vcocurrfid;
	}

	if (FUNC5(data, reqfid))
		return 1;

	if (FUNC3(data))
		return 1;

	if (data->currfid != reqfid) {
		FUNC2("ph2: mismatch, failed fid transition, curr 0x%x, req 0x%x\n",
			data->currfid, reqfid);
		return 1;
	}

	if (savevid != data->currvid) {
		FUNC2("ph2: vid changed, save 0x%x, curr 0x%x\n",
			savevid, data->currvid);
		return 1;
	}

	FUNC1("ph2 complete, currfid 0x%x, currvid 0x%x\n",
		data->currfid, data->currvid);

	return 0;
}