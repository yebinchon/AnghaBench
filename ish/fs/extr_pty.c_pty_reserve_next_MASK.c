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
struct TYPE_2__ {int /*<<< orphan*/ ** ttys; } ;

/* Variables and functions */
 int MAX_PTYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ pty_slave ; 
 int /*<<< orphan*/  ttys_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2() {
    int pty_num;
    FUNC0(&ttys_lock);
    for (pty_num = 0; pty_num < MAX_PTYS; pty_num++) {
        if (pty_slave.ttys[pty_num] == NULL)
            break;
    }
    pty_slave.ttys[pty_num] = (void *) 1; // anything non-null to reserve it
    FUNC1(&ttys_lock);
    return pty_num;
}