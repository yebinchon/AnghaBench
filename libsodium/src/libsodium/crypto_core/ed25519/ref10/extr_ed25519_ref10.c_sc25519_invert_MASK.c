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
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,unsigned char*) ; 

void
FUNC3(unsigned char recip[32], const unsigned char s[32])
{
    unsigned char _10[32], _100[32], _11[32], _101[32], _111[32],
        _1001[32], _1011[32], _1111[32];

    FUNC1(_10, s);
    FUNC1(_100, _10);
    FUNC0(_11, _10, s);
    FUNC0(_101, _10, _11);
    FUNC0(_111, _10, _101);
    FUNC0(_1001, _10, _111);
    FUNC0(_1011, _10, _1001);
    FUNC0(_1111, _100, _1011);
    FUNC0(recip, _1111, s);

    FUNC2(recip, 123 + 3, _101);
    FUNC2(recip, 2 + 2, _11);
    FUNC2(recip, 1 + 4, _1111);
    FUNC2(recip, 1 + 4, _1111);
    FUNC2(recip, 4, _1001);
    FUNC2(recip, 2, _11);
    FUNC2(recip, 1 + 4, _1111);
    FUNC2(recip, 1 + 3, _101);
    FUNC2(recip, 3 + 3, _101);
    FUNC2(recip, 3, _111);
    FUNC2(recip, 1 + 4, _1111);
    FUNC2(recip, 2 + 3, _111);
    FUNC2(recip, 2 + 2, _11);
    FUNC2(recip, 1 + 4, _1011);
    FUNC2(recip, 2 + 4, _1011);
    FUNC2(recip, 6 + 4, _1001);
    FUNC2(recip, 2 + 2, _11);
    FUNC2(recip, 3 + 2, _11);
    FUNC2(recip, 3 + 2, _11);
    FUNC2(recip, 1 + 4, _1001);
    FUNC2(recip, 1 + 3, _111);
    FUNC2(recip, 2 + 4, _1111);
    FUNC2(recip, 1 + 4, _1011);
    FUNC2(recip, 3, _101);
    FUNC2(recip, 2 + 4, _1111);
    FUNC2(recip, 3, _101);
    FUNC2(recip, 1 + 2, _11);
}