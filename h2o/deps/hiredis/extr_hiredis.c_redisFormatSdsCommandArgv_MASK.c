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
typedef  int /*<<< orphan*/ * sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 unsigned long long FUNC7 (int /*<<< orphan*/ *) ; 
 size_t const FUNC8 (char const*) ; 

int FUNC9(sds *target, int argc, const char **argv,
                              const size_t *argvlen)
{
    sds cmd;
    unsigned long long totlen;
    int j;
    size_t len;

    /* Abort on a NULL target */
    if (target == NULL)
        return -1;

    /* Calculate our total size */
    totlen = 1+FUNC2(argc)+2;
    for (j = 0; j < argc; j++) {
        len = argvlen ? argvlen[j] : FUNC8(argv[j]);
        totlen += FUNC1(len);
    }

    /* Use an SDS string for command construction */
    cmd = FUNC6();
    if (cmd == NULL)
        return -1;

    /* We already know how much storage we need */
    cmd = FUNC3(cmd, totlen);
    if (cmd == NULL)
        return -1;

    /* Construct command */
    cmd = FUNC4(cmd, "*%i\r\n", argc);
    for (j=0; j < argc; j++) {
        len = argvlen ? argvlen[j] : FUNC8(argv[j]);
        cmd = FUNC4(cmd, "$%u\r\n", len);
        cmd = FUNC5(cmd, argv[j], len);
        cmd = FUNC5(cmd, "\r\n", sizeof("\r\n")-1);
    }

    FUNC0(FUNC7(cmd)==totlen);

    *target = cmd;
    return totlen;
}