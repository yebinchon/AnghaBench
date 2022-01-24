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

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_SINGLESTEP ; 
 int SIGTRAP ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(int pid) {
    FUNC4(FUNC3(PTRACE_SINGLESTEP, pid, NULL, 0), "ptrace step");
    int status;
    FUNC4(FUNC5(pid, &status, 0), "wait step");
    if (FUNC0(status) && FUNC1(status) != SIGTRAP) {
        int signal = FUNC1(status);
        FUNC2("child received signal %d\n", signal);
        // a signal arrived, we now have to actually deliver it
        FUNC4(FUNC3(PTRACE_SINGLESTEP, pid, NULL, signal), "ptrace step");
        FUNC4(FUNC5(pid, &status, 0), "wait step");
        return 1;
    }
    return 0;
}