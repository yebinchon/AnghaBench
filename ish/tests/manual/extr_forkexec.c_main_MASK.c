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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,char**) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(int argc, char *argv[]) {
    int pid = FUNC2();
    if (pid < 0) {
        FUNC3("fork");
        FUNC0();
    }
    if (pid == 0) {
        // child
        if (FUNC1(argv[1], argv + 1) < 0) {
            FUNC3("exec");
            FUNC0();
        }
    } else {
        // parent
        if (FUNC4(pid, NULL, 0) != pid) {
            FUNC3("wait");
            FUNC0();
        }
    }
}