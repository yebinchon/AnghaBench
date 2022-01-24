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
struct TYPE_2__ {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  devptsfs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  procfs ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 char* FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int FUNC7 (int,char* const*,char*) ; 

int FUNC8(int argc, char *const argv[]) {
    char envp[100] = {0};
    if (FUNC3("TERM"))
        FUNC4(envp, FUNC3("TERM") - FUNC6("TERM") - 1);
    int err = FUNC7(argc, argv, envp);
    if (err < 0) {
        FUNC2(stderr, "%s\n", FUNC5(-err));
        return err;
    }
    FUNC1(&procfs, "proc", "/proc", 0);
    FUNC1(&devptsfs, "devpts", "/dev/pts", 0);
    FUNC0(&current->cpu);
}