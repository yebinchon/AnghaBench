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
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tty *tty) {
    char ch;
    for (;;) {
        int err = FUNC2(STDIN_FILENO, &ch, 1);
        if (err != 1) {
            FUNC0("tty read returned %d\n", err);
            if (err < 0)
                FUNC0("error: %s\n", FUNC3(errno));
            continue;
        }
        if (ch == '\x1c') {
            // ^\ (so ^C still works for emulated SIGINT)
            FUNC1(SIGINT);
        }
        FUNC4(tty, &ch, 1, 0);
    }
}