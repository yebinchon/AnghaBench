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
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(int argc, char **argv) {
    if (argc != 2) {
        FUNC7(stderr,"Usage: kilo <filename>\n");
        FUNC6(1);
    }

    FUNC8();
    FUNC3(argv[1]);
    FUNC0(argv[1]);
    FUNC5(STDIN_FILENO);
    FUNC4(
        "HELP: Ctrl-S = save | Ctrl-Q = quit | Ctrl-F = find");
    while(1) {
        FUNC2();
        FUNC1(STDIN_FILENO);
    }
    return 0;
}