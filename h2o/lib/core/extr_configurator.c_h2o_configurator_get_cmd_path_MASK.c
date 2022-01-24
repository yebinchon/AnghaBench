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
struct TYPE_2__ {char* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_ROOT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char) ; 
 scalar_t__ FUNC6 (char const*) ; 

char *FUNC7(const char *cmd)
{
    char *root, *cmd_fullpath;

    /* just return the cmd (being strdup'ed) in case we do not need to prefix the value */
    if (cmd[0] == '/' || FUNC5(cmd, '/') == NULL)
        goto ReturnOrig;

    /* obtain root */
    if ((root = FUNC1("H2O_ROOT")) == NULL) {
        root = FUNC0(H2O_ROOT);
    }

    /* build full-path and return */
    cmd_fullpath = FUNC2(FUNC6(root) + FUNC6(cmd) + 2);
    FUNC4(cmd_fullpath, "%s/%s", root, cmd);
    return cmd_fullpath;

ReturnOrig:
    return FUNC3(NULL, cmd, SIZE_MAX).base;
}