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
 scalar_t__ FUNC0 (unsigned char const*,unsigned char const*,unsigned long long,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*) ; 

int
FUNC3(unsigned char *m, const unsigned char *c,
                                       unsigned long long clen,
                                       const unsigned char *n,
                                       const unsigned char *k)
{
    unsigned char subkey[32];
    int           i;

    if (clen < 32) {
        return -1;
    }
    FUNC1(subkey, 32, n, k);
    if (FUNC0(c + 16, c + 32,
                                           clen - 32, subkey) != 0) {
        return -1;
    }
    FUNC2(m, c, clen, n, k);
    for (i = 0; i < 32; ++i) {
        m[i] = 0;
    }
    return 0;
}