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
 int ADDR_NO_RANDOMIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PR_SET_TSC ; 
 int /*<<< orphan*/  PR_TSC_SIGSEGV ; 
 int /*<<< orphan*/  PTRACE_TRACEME ; 
 int SIGRTMIN ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char* const*,char* const*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 

int FUNC13(int at, const char *path, char *const argv[], char *const envp[]) {
    // shut off aslr
    int persona = FUNC7(0xffffffff);
    persona |= ADDR_NO_RANDOMIZE;
    FUNC7(persona);

    int pid = FUNC3();
    if (pid < 0) {
        FUNC6("fork");
        FUNC1(1);
    }
    if (pid == 0) {
        // child
        // enable segfaulting on rdtsc and cpuid
        FUNC11(FUNC8(PR_SET_TSC, PR_TSC_SIGSEGV), "rdtsc faulting");
        /* trycall(arch_prctl(ARCH_SET_CPUID, 0), "cpuid faulting"); */
        FUNC11(FUNC9(PTRACE_TRACEME, 0, NULL, NULL), "ptrace traceme");
        // get rid of signal handlers
        for (int sig = 0; sig < SIGRTMIN - 1; sig++)
            FUNC10(sig, SIG_DFL);
        FUNC11(FUNC2(FUNC5(at, path, O_RDONLY), argv, envp), "execve");
    } else {
        // parent, wait for child to stop after exec
        int status;
        FUNC11(FUNC12(&status), "wait");
        if (!FUNC0(status)) {
            FUNC4(stderr, "child failed to start\n");
            FUNC1(1);
        }
    }
    return pid;
}