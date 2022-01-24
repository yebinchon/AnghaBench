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
struct powernow_k8_data {scalar_t__ currfid; scalar_t__ currvid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct powernow_k8_data*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct powernow_k8_data*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct powernow_k8_data *data,
		u32 reqvid)
{
	u32 savefid = data->currfid;
	u32 savereqvid = reqvid;

	FUNC0("ph3 (cpu%d): starting, currfid 0x%x, currvid 0x%x\n",
		FUNC3(),
		data->currfid, data->currvid);

	if (reqvid != data->currvid) {
		if (FUNC4(data, reqvid))
			return 1;

		if (savefid != data->currfid) {
			FUNC1("ph3: bad fid change, save 0x%x, curr 0x%x\n",
				savefid, data->currfid);
			return 1;
		}

		if (data->currvid != reqvid) {
			FUNC1("ph3: failed vid transition\n, req 0x%x, curr 0x%x",
				reqvid, data->currvid);
			return 1;
		}
	}

	if (FUNC2(data))
		return 1;

	if (savereqvid != data->currvid) {
		FUNC0("ph3 failed, currvid 0x%x\n", data->currvid);
		return 1;
	}

	if (savefid != data->currfid) {
		FUNC0("ph3 failed, currfid changed 0x%x\n",
			data->currfid);
		return 1;
	}

	FUNC0("ph3 complete, currfid 0x%x, currvid 0x%x\n",
		data->currfid, data->currvid);

	return 0;
}