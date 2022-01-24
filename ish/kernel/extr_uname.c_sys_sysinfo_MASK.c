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
struct uptime_info {int /*<<< orphan*/  load_15m; int /*<<< orphan*/  load_5m; int /*<<< orphan*/  load_1m; int /*<<< orphan*/  uptime_ticks; } ;
struct sys_info {int /*<<< orphan*/ * loads; int /*<<< orphan*/  uptime; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  _EFAULT ; 
 struct uptime_info FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sys_info*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sys_info) ; 

dword_t FUNC3(addr_t info_addr) {
    struct sys_info info = {0};
    struct uptime_info uptime = FUNC0();
    info.uptime = uptime.uptime_ticks;
    info.loads[0] = uptime.load_1m;
    info.loads[1] = uptime.load_5m;
    info.loads[2] = uptime.load_15m;
    FUNC1(&info);

    if (FUNC2(info_addr, info))
        return _EFAULT;
    return 0;
}