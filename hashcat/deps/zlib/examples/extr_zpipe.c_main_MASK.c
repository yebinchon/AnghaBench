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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Z_DEFAULT_COMPRESSION ; 
 int Z_OK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(int argc, char **argv)
{
    int ret;

    /* avoid end-of-line conversions */
    FUNC0(stdin);
    FUNC0(stdout);

    /* do compression if no arguments */
    if (argc == 1) {
        ret = FUNC1(stdin, stdout, Z_DEFAULT_COMPRESSION);
        if (ret != Z_OK)
            FUNC5(ret);
        return ret;
    }

    /* do decompression if -d specified */
    else if (argc == 2 && FUNC4(argv[1], "-d") == 0) {
        ret = FUNC3(stdin, stdout);
        if (ret != Z_OK)
            FUNC5(ret);
        return ret;
    }

    /* otherwise, report usage */
    else {
        FUNC2("zpipe usage: zpipe [-d] < source > dest\n", stderr);
        return 1;
    }
}