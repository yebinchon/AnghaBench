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
struct passwd {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int EX_CONFIG ; 
 int EX_OSERR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct passwd* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (scalar_t__) ; 

int FUNC8(int argc, char **argv)
{
    struct passwd *user;

    if (argc < 3) {
        FUNC1(stderr, "no command (usage: setuidgid user cmd args...)\n");
        return EX_CONFIG;
    }
    --argc;
    ++argv;

    errno = 0;
    if ((user = FUNC2(*argv)) == NULL) {
        if (errno == 0) {
            FUNC1(stderr, "unknown user:%s\n", *argv);
            return EX_CONFIG;
        } else {
            FUNC4("getpwnam");
            return EX_OSERR;
        }
    }
    --argc;
    ++argv;

    if (FUNC5(user->pw_gid) != 0) {
        FUNC4("setgid failed");
        return EX_OSERR;
    }
    if (FUNC3(user->pw_name, user->pw_gid) != 0) {
        FUNC4("initgroups failed");
        return EX_OSERR;
    }
    if (FUNC6(user->pw_uid) != 0) {
        FUNC4("setuid failed");
        return EX_OSERR;
    }

    FUNC0(*argv, argv);
    FUNC1(stderr, "execvp failed to launch file:%s:%s\n", *argv, FUNC7(errno));
    return EX_OSERR;
}