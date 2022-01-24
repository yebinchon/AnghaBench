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
struct mount {int dummy; } ;
struct ish_stat {int dummy; } ;
struct attr {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_2__ {int (* setattr ) (struct mount*,char const*,struct attr) ;} ;

/* Variables and functions */
 int _ENOENT ; 
 scalar_t__ attr_size ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct ish_stat*,struct attr) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*,int /*<<< orphan*/ ,struct ish_stat*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*,char const*,struct ish_stat*,int /*<<< orphan*/ *) ; 
 TYPE_1__ realfs ; 
 int FUNC6 (struct mount*,char const*,struct attr) ; 

__attribute__((used)) static int FUNC7(struct mount *mount, const char *path, struct attr attr) {
    if (attr.type == attr_size)
        return realfs.setattr(mount, path, attr);
    FUNC0(mount);
    struct ish_stat ishstat;
    ino_t inode;
    if (!FUNC5(mount, path, &ishstat, &inode)) {
        FUNC2(mount);
        return _ENOENT;
    }
    FUNC3(&ishstat, attr);
    FUNC4(mount, inode, &ishstat);
    FUNC1(mount);
    return 0;
}