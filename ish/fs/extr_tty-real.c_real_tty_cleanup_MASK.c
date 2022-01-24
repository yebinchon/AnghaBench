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
struct tty {scalar_t__ num; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 scalar_t__ ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ REAL_TTY_NUM ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSANOW ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  old_termios ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct tty *tty) {
    if (tty->num != REAL_TTY_NUM)
        return;
    if (FUNC2(STDIN_FILENO, TCSANOW, &old_termios) < 0 && errno != ENOTTY)
        FUNC0("failed to reset terminal");
    FUNC1(tty->thread);
}