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

/* Variables and functions */
 long INT_MAX ; 
 int _ENOENT ; 
 long FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(const char *path) {
    if (FUNC4(path, "") == 0)
        return -1; // root
    if (path[0] != '/' || path[1] == '\0' || FUNC3(path + 1, '/') != NULL)
        return _ENOENT;

    // there's one path component here, which had better be a pty number
    const char *name = path + 1; // skip the initial /
    if (!FUNC2(name))
        return _ENOENT;
    // it's not possible to correctly use atoi
    long pty_long = FUNC0(name);
    if (pty_long > INT_MAX)
        return _ENOENT;
    int pty_num = (int) pty_long;
    if (!FUNC1(pty_num))
        return _ENOENT;
    return pty_num;
}