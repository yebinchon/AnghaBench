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
struct ish_stat {int dummy; } ;
struct fd {int /*<<< orphan*/  mount; int /*<<< orphan*/  fake_inode; } ;
struct attr {scalar_t__ type; } ;
struct TYPE_2__ {int (* fsetattr ) (struct fd*,struct attr) ;} ;

/* Variables and functions */
 scalar_t__ attr_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ish_stat*,struct attr) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ish_stat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ish_stat*) ; 
 TYPE_1__ realfs ; 
 int FUNC5 (struct fd*,struct attr) ; 

__attribute__((used)) static int FUNC6(struct fd *fd, struct attr attr) {
    if (attr.type == attr_size)
        return realfs.fsetattr(fd, attr);
    FUNC0(fd->mount);
    struct ish_stat ishstat;
    FUNC3(fd->mount, fd->fake_inode, &ishstat);
    FUNC2(&ishstat, attr);
    FUNC4(fd->mount, fd->fake_inode, &ishstat);
    FUNC1(fd->mount);
    return 0;
}