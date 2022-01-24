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
struct fd {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty*) ; 
 int MAX_PTYS ; 
 int FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  TTY_PSEUDO_MASTER_MAJOR ; 
 int _ENOSPC ; 
 int /*<<< orphan*/  pty_master ; 
 int FUNC2 () ; 
 struct tty* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct tty*,struct fd*) ; 

int FUNC5(struct fd *fd) {
    int pty_num = FUNC2();
    if (pty_num == MAX_PTYS)
        return _ENOSPC;
    struct tty *master = FUNC3(&pty_master, TTY_PSEUDO_MASTER_MAJOR, pty_num);
    if (FUNC0(master))
        return FUNC1(master);
    return FUNC4(master, fd);
}