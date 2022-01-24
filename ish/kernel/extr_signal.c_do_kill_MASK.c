#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task {scalar_t__ tgid; } ;
struct TYPE_4__ {int /*<<< orphan*/  uid; int /*<<< orphan*/  pid; } ;
struct siginfo_ {TYPE_1__ kill; int /*<<< orphan*/  code; } ;
typedef  scalar_t__ pid_t_ ;
typedef  int /*<<< orphan*/  dword_t ;
struct TYPE_6__ {TYPE_2__* group; int /*<<< orphan*/  uid; int /*<<< orphan*/  pid; } ;
struct TYPE_5__ {scalar_t__ pgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUM_SIGS ; 
 int /*<<< orphan*/  SI_USER_ ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int _EINVAL ; 
 int _ESRCH ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct task* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  pids_lock ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct siginfo_) ; 
 int /*<<< orphan*/  FUNC4 (struct task*,int /*<<< orphan*/ ,struct siginfo_) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(pid_t_ pid, dword_t sig, pid_t_ tgid) {
    FUNC0("kill(%d, %d)", pid, sig);
    if (sig >= NUM_SIGS)
        return _EINVAL;
    struct siginfo_ info = {
        .code = SI_USER_,
        .kill.pid = current->pid,
        .kill.uid = current->uid,
    };
    // TODO check permissions
    if (pid == 0)
        pid = -current->group->pgid;
    if (pid < 0)
        return FUNC3(-pid, sig, info);

    FUNC1(&pids_lock);
    struct task *task = FUNC2(pid);
    if (task == NULL) {
        FUNC5(&pids_lock);
        return _ESRCH;
    }

    // If tgid is nonzero, it must be correct
    if (tgid != 0 && task->tgid != tgid) {
        FUNC5(&pids_lock);
        return _ESRCH;
    }

    FUNC4(task, sig, info);
    FUNC5(&pids_lock);
    return 0;
}