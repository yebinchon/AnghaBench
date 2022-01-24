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
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*) ; 
 int FUNC1 (unsigned char const*,unsigned char*) ; 
 int FUNC2 (unsigned char*,unsigned char const*,int) ; 

int
FUNC3(const unsigned char *h,
                                 const unsigned char *in,
                                 unsigned long long   inlen,
                                 const unsigned char *k)
{
    unsigned char correct[32];

    FUNC0(correct, in, inlen, k);

    return FUNC1(h, correct) | (-(h == correct)) |
           FUNC2(correct, h, 32);
}