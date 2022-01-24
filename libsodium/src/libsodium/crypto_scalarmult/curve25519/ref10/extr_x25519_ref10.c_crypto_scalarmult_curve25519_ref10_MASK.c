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
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (unsigned char const*) ; 

__attribute__((used)) static int
FUNC13(unsigned char *q,
                                   const unsigned char *n,
                                   const unsigned char *p)
{
    unsigned char *t = q;
    unsigned int   i;
    fe25519        x1;
    fe25519        x2;
    fe25519        z2;
    fe25519        x3;
    fe25519        z3;
    fe25519        tmp0;
    fe25519        tmp1;
    int            pos;
    unsigned int   swap;
    unsigned int   b;

    if (FUNC12(p)) {
        return -1;
    }
    for (i = 0; i < 32; i++) {
        t[i] = n[i];
    }
    t[0] &= 248;
    t[31] &= 127;
    t[31] |= 64;
    FUNC5(x1, p);
    FUNC1(x2);
    FUNC0(z2);
    FUNC3(x3, x1);
    FUNC1(z3);

    swap = 0;
    for (pos = 254; pos >= 0; --pos) {
        b = t[pos / 8] >> (pos & 7);
        b &= 1;
        swap ^= b;
        FUNC4(x2, x3, swap);
        FUNC4(z2, z3, swap);
        swap = b;
        FUNC10(tmp0, x3, z3);
        FUNC10(tmp1, x2, z2);
        FUNC2(x2, x2, z2);
        FUNC2(z2, x3, z3);
        FUNC7(z3, tmp0, x2);
        FUNC7(z2, z2, tmp1);
        FUNC9(tmp0, tmp1);
        FUNC9(tmp1, x2);
        FUNC2(x3, z3, z2);
        FUNC10(z2, z3, z2);
        FUNC7(x2, tmp1, tmp0);
        FUNC10(tmp1, tmp1, tmp0);
        FUNC9(z2, z2);
        FUNC8(z3, tmp1, 121666);
        FUNC9(x3, x3);
        FUNC2(tmp0, tmp0, z3);
        FUNC7(z3, x1, z2);
        FUNC7(z2, tmp1, tmp0);
    }
    FUNC4(x2, x3, swap);
    FUNC4(z2, z3, swap);

    FUNC6(z2, z2);
    FUNC7(x2, x2, z2);
    FUNC11(q, x2);

    return 0;
}