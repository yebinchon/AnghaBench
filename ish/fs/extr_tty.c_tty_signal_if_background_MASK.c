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
struct tty {scalar_t__ fg_group; } ;
typedef  scalar_t__ pid_t_ ;

/* Variables and functions */
 int _EINTR ; 
 int _EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 

__attribute__((used)) static int FUNC2(struct tty *tty, pid_t_ current_pgid, int sig) {
    // you can apparently access a terminal that's not your controlling
    // terminal all you want
    if (!FUNC1(tty))
        return 0;
    // check if we're in the foreground
    if (tty->fg_group == 0 || current_pgid == tty->fg_group)
        return 0;

    if (!FUNC0(sig))
        return _EIO;
    else
        return _EINTR;
}