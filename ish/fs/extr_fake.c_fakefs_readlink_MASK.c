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
struct ish_stat {int /*<<< orphan*/  mode; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {scalar_t__ (* readlink ) (struct mount*,char const*,char*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ _EINVAL ; 
 scalar_t__ _ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 scalar_t__ FUNC4 (struct mount*,char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*,char const*,struct ish_stat*,int /*<<< orphan*/ *) ; 
 TYPE_1__ realfs ; 
 scalar_t__ FUNC6 (struct mount*,char const*,char*,size_t) ; 

__attribute__((used)) static ssize_t FUNC7(struct mount *mount, const char *path, char *buf, size_t bufsize) {
    FUNC1(mount);
    struct ish_stat ishstat;
    if (!FUNC5(mount, path, &ishstat, NULL)) {
        FUNC3(mount);
        return _ENOENT;
    }
    if (!FUNC0(ishstat.mode)) {
        FUNC3(mount);
        return _EINVAL;
    }

    ssize_t err = realfs.readlink(mount, path, buf, bufsize);
    if (err == _EINVAL)
        err = FUNC4(mount, path, buf, bufsize);
    FUNC2(mount);
    return err;
}