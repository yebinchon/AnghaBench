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
 int* a ; 
 int* c ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 

int
FUNC6(void)
{
    int clen;

    for (clen = 0; clen < 1000; ++clen) {
        FUNC1(key);
        FUNC5(c, clen);
        FUNC0(a, c, clen, key);
        if (FUNC2(a, c, clen, key) != 0) {
            FUNC3("fail %d\n", clen);
            return 100;
        }
        if (clen > 0) {
            c[FUNC4() % clen] += 1 + (FUNC4() % 255);
            if (FUNC2(a, c, clen, key) == 0) {
                FUNC3("forgery %d\n", clen);
                return 100;
            }
            a[FUNC4() % sizeof a] += 1 + (FUNC4() % 255);
            if (FUNC2(a, c, clen, key) == 0) {
                FUNC3("forgery %d\n", clen);
                return 100;
            }
        }
    }
    return 0;
}