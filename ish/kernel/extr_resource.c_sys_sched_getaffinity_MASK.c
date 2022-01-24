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
struct task {int dummy; } ;
typedef  scalar_t__ pid_t_ ;
typedef  int /*<<< orphan*/  int_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  cpuset ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _EFAULT ; 
 int /*<<< orphan*/  _ESRCH ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 struct task* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  pids_lock ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

int_t FUNC8(pid_t_ pid, dword_t cpusetsize, addr_t cpuset_addr) {
    FUNC0("sched_getaffinity(%d, %d, %#x)", pid, cpusetsize, cpuset_addr);
    if (pid != 0) {
        FUNC2(&pids_lock);
        struct task *task = FUNC4(pid);
        FUNC6(&pids_lock);
        if (task == NULL)
            return _ESRCH;
    }

    unsigned cpus = FUNC5(_SC_NPROCESSORS_ONLN);
    if (cpus > cpusetsize * 8)
        cpus = cpusetsize * 8;
    char cpuset[cpusetsize];
    FUNC3(cpuset, 0, sizeof(cpuset));
    for (unsigned i = 0; i < cpus; i++)
        FUNC1(i, cpuset);
    if (FUNC7(cpuset_addr, cpuset, cpusetsize))
        return _EFAULT;
    return 0;
}