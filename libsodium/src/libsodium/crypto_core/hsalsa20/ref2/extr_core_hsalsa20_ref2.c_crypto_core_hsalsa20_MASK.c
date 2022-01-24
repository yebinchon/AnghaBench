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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ROUNDS ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4(unsigned char *out,
                     const unsigned char *in,
                     const unsigned char *k,
                     const unsigned char *c)
{
    uint32_t x0, x1, x2, x3, x4, x5, x6, x7, x8,
             x9, x10, x11, x12, x13, x14,  x15;
    int      i;

    if (c == NULL) {
        x0 = FUNC3(0x61707865);
        x5 = FUNC3(0x3320646e);
        x10 = FUNC3(0x79622d32);
        x15 = FUNC3(0x6b206574);
    } else {
        x0 = FUNC0(c + 0);
        x5 = FUNC0(c + 4);
        x10 = FUNC0(c + 8);
        x15 = FUNC0(c + 12);
    }
    x1 = FUNC0(k + 0);
    x2 = FUNC0(k + 4);
    x3 = FUNC0(k + 8);
    x4 = FUNC0(k + 12);
    x11 = FUNC0(k + 16);
    x12 = FUNC0(k + 20);
    x13 = FUNC0(k + 24);
    x14 = FUNC0(k + 28);
    x6 = FUNC0(in + 0);
    x7 = FUNC0(in + 4);
    x8 = FUNC0(in + 8);
    x9 = FUNC0(in + 12);

    for (i = ROUNDS; i > 0; i -= 2) {
        x4 ^= FUNC1(x0 + x12, 7);
        x8 ^= FUNC1(x4 + x0, 9);
        x12 ^= FUNC1(x8 + x4, 13);
        x0 ^= FUNC1(x12 + x8, 18);
        x9 ^= FUNC1(x5 + x1, 7);
        x13 ^= FUNC1(x9 + x5, 9);
        x1 ^= FUNC1(x13 + x9, 13);
        x5 ^= FUNC1(x1 + x13, 18);
        x14 ^= FUNC1(x10 + x6, 7);
        x2 ^= FUNC1(x14 + x10, 9);
        x6 ^= FUNC1(x2 + x14, 13);
        x10 ^= FUNC1(x6 + x2, 18);
        x3 ^= FUNC1(x15 + x11, 7);
        x7 ^= FUNC1(x3 + x15, 9);
        x11 ^= FUNC1(x7 + x3, 13);
        x15 ^= FUNC1(x11 + x7, 18);
        x1 ^= FUNC1(x0 + x3, 7);
        x2 ^= FUNC1(x1 + x0, 9);
        x3 ^= FUNC1(x2 + x1, 13);
        x0 ^= FUNC1(x3 + x2, 18);
        x6 ^= FUNC1(x5 + x4, 7);
        x7 ^= FUNC1(x6 + x5, 9);
        x4 ^= FUNC1(x7 + x6, 13);
        x5 ^= FUNC1(x4 + x7, 18);
        x11 ^= FUNC1(x10 + x9, 7);
        x8 ^= FUNC1(x11 + x10, 9);
        x9 ^= FUNC1(x8 + x11, 13);
        x10 ^= FUNC1(x9 + x8, 18);
        x12 ^= FUNC1(x15 + x14, 7);
        x13 ^= FUNC1(x12 + x15, 9);
        x14 ^= FUNC1(x13 + x12, 13);
        x15 ^= FUNC1(x14 + x13, 18);
    }

    FUNC2(out + 0, x0);
    FUNC2(out + 4, x5);
    FUNC2(out + 8, x10);
    FUNC2(out + 12, x15);
    FUNC2(out + 16, x6);
    FUNC2(out + 20, x7);
    FUNC2(out + 24, x8);
    FUNC2(out + 28, x9);

    return 0;
}