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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* c ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*,int*,unsigned int,int /*<<< orphan*/ ) ; 
 int* guard_page ; 
 int /*<<< orphan*/  key ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int*,size_t) ; 

int
FUNC7(void)
{
    size_t clen;

    for (clen = 0; clen < 1000; ++clen) {
        FUNC2(key);
        FUNC6(c, clen);
        FUNC1(a, c, clen, key);
        if (FUNC3(a, c, clen, key) != 0) {
            FUNC4("fail %u\n", (unsigned int) clen);
            return 100;
        }
        if (clen > 0) {
            c[FUNC5() % clen] += 1 + (FUNC5() % 255);
            if (FUNC3(a, c, clen, key) == 0) {
                FUNC4("forgery %u\n", (unsigned int) clen);
                return 100;
            }
            a[FUNC5() % sizeof a] += 1 + (FUNC5() % 255);
            if (FUNC3(a, c, clen, key) == 0) {
                FUNC4("forgery %u\n", (unsigned int) clen);
                return 100;
            }
        }
    }

    FUNC2(key);
    FUNC1(a, guard_page, 0U, key);
    FUNC0(FUNC3(a, guard_page, 0U, key) == 0);

    return 0;
}