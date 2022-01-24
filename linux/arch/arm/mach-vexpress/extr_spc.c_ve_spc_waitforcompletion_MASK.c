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
struct TYPE_2__ {int cur_rsp_stat; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  TIMEOUT_US ; 
 TYPE_1__* info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int req_type)
{
	int ret = FUNC2(
			&info->done, FUNC1(TIMEOUT_US));
	if (ret == 0)
		ret = -ETIMEDOUT;
	else if (ret > 0)
		ret = info->cur_rsp_stat & FUNC0(req_type) ? 0 : -EIO;
	return ret;
}