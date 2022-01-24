#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  perms; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct tty {int /*<<< orphan*/  lock; TYPE_1__ pty; } ;
struct attr {int type; int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_4__ {struct tty** ttys; } ;

/* Variables and functions */
 int _EINVAL ; 
 int _EROFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  attr_gid 130 
#define  attr_mode 129 
 int attr_size ; 
#define  attr_uid 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__ pty_slave ; 
 int /*<<< orphan*/  ttys_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(int pty_num, struct attr attr) {
    if (pty_num == -1)
        return _EROFS;
    if (attr.type == attr_size)
        return _EINVAL;

    FUNC1(&ttys_lock);
    struct tty *tty = pty_slave.ttys[pty_num];
    FUNC0(tty != NULL);
    FUNC1(&tty->lock);

    switch (attr.type) {
        case attr_uid:
            tty->pty.uid = attr.uid;
            break;
        case attr_gid:
            tty->pty.gid = attr.gid;
            break;
        case attr_mode:
            tty->pty.perms = attr.mode;
            break;
    }

    FUNC2(&tty->lock);
    FUNC2(&ttys_lock);
    return 0;
}