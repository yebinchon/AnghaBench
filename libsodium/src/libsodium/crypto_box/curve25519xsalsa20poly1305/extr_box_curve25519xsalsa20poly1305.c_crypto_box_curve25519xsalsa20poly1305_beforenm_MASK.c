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
 int FUNC0 (unsigned char*,unsigned char const*,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char const*,unsigned char const*) ; 

int
FUNC2(unsigned char *k,
                                               const unsigned char *pk,
                                               const unsigned char *sk)
{
    static const unsigned char zero[16] = { 0 };
    unsigned char s[32];

    if (FUNC1(s, sk, pk) != 0) {
        return -1;
    }
    return FUNC0(k, zero, s, NULL);
}