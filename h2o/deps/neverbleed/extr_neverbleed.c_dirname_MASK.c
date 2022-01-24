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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ errno ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static char *FUNC4(const char *path)
{
    const char *last_slash = FUNC3(path, '/');
    char *ret;

    if (last_slash == NULL) {
        errno = 0;
        FUNC0("dirname: no slash in given path:%s", path);
    }
    if ((ret = FUNC1(last_slash + 1 - path)) == NULL)
        FUNC0("no memory");
    FUNC2(ret, path, last_slash - path);
    ret[last_slash - path] = '\0';
    return ret;
}