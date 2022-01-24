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
 scalar_t__ FUNC0 (struct powernow_k8_data*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct powernow_k8_data*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct powernow_k8_data*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct powernow_k8_data*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct powernow_k8_data *data,
		u32 reqfid, u32 reqvid)
{
	if (FUNC2(data, reqvid, reqfid))
		return 1;

	if (FUNC0(data, reqfid))
		return 1;

	if (FUNC1(data, reqvid))
		return 1;

	if (FUNC5(data))
		return 1;

	if ((reqfid != data->currfid) || (reqvid != data->currvid)) {
		FUNC4("failed (cpu%d): req 0x%x 0x%x, curr 0x%x 0x%x\n",
				FUNC6(),
				reqfid, reqvid, data->currfid, data->currvid);
		return 1;
	}

	FUNC3("transitioned (cpu%d): new fid 0x%x, vid 0x%x\n",
		FUNC6(), data->currfid, data->currvid);

	return 0;
}