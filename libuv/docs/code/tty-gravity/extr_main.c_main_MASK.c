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
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int height ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tick ; 
 int /*<<< orphan*/  tty ; 
 int /*<<< orphan*/  update ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int width ; 

int FUNC9() {
    loop = FUNC1();

    FUNC6(loop, &tty, STDOUT_FILENO, 0);
    FUNC8(&tty, 0);
    
    if (FUNC5(&tty, &width, &height)) {
        FUNC0(stderr, "Could not get TTY information\n");
        FUNC7();
        return 1;
    }

    FUNC0(stderr, "Width %d, height %d\n", width, height);
    FUNC3(loop, &tick);
    FUNC4(&tick, update, 200, 200);
    return FUNC2(loop, UV_RUN_DEFAULT);
}