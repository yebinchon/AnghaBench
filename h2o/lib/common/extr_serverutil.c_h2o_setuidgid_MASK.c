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
struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; int /*<<< orphan*/  pw_name; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char const*,struct passwd*,char*,int,struct passwd**) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

int FUNC7(const char *user)
{
    struct passwd pwbuf, *pw;
    char buf[65536]; /* should be large enough */

    errno = 0;
    if (FUNC0(user, &pwbuf, buf, sizeof(buf), &pw) != 0) {
        FUNC2("getpwnam_r");
        return -1;
    }
    if (pw == NULL) {
        FUNC1("unknown user:%s\n", user);
        return -1;
    }
    if (FUNC4(pw->pw_gid) != 0) {
        FUNC1("setgid(%d) failed:%s\n", (int)pw->pw_gid, FUNC6(errno));
        return -1;
    }
    if (FUNC3(pw->pw_name, pw->pw_gid) != 0) {
        FUNC1("initgroups(%s, %d) failed:%s\n", pw->pw_name, (int)pw->pw_gid, FUNC6(errno));
        return -1;
    }
    if (FUNC5(pw->pw_uid) != 0) {
        FUNC1("setuid(%d) failed:%s\n", (int)pw->pw_uid, FUNC6(errno));
        return -1;
    }

    return 0;
}