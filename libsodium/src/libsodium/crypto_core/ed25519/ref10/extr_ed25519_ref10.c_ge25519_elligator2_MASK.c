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
typedef  int /*<<< orphan*/  ge25519_p3 ;
typedef  int /*<<< orphan*/  ge25519_p2 ;
typedef  int /*<<< orphan*/  ge25519_p1p1 ;
typedef  int /*<<< orphan*/ * fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * curve25519_A ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(unsigned char s[32], const fe25519 r, const unsigned char x_sign)
{
    fe25519      e;
    fe25519      negx;
    fe25519      rr2;
    fe25519      x, x2, x3;
    ge25519_p3   p3;
    ge25519_p1p1 p1;
    ge25519_p2   p2;
    unsigned int e_is_minus_1;

    FUNC10(rr2, r);
    rr2[0]++;
    FUNC6(rr2, rr2);
    FUNC7(x, curve25519_A, rr2);
    FUNC8(x, x);

    FUNC9(x2, x);
    FUNC7(x3, x, x2);
    FUNC4(e, x3, x);
    FUNC7(x2, x2, curve25519_A);
    FUNC4(e, x2, e);

    FUNC1(e, e);

    FUNC12(s, e);
    e_is_minus_1 = s[1] & 1;
    FUNC8(negx, x);
    FUNC5(x, negx, e_is_minus_1);
    FUNC2(x2);
    FUNC5(x2, curve25519_A, e_is_minus_1);
    FUNC11(x, x, x2);

    /* yed = (x-1)/(x+1) */
    {
        fe25519 one;
        fe25519 x_plus_one;
        fe25519 x_plus_one_inv;
        fe25519 x_minus_one;
        fe25519 yed;

        FUNC3(one);
        FUNC4(x_plus_one, x, one);
        FUNC11(x_minus_one, x, one);
        FUNC6(x_plus_one_inv, x_plus_one);
        FUNC7(yed, x_minus_one, x_plus_one_inv);
        FUNC12(s, yed);
    }

    /* recover x */
    s[31] |= x_sign;
    if (FUNC13(&p3, s) != 0) {
        FUNC0(); /* LCOV_EXCL_LINE */
    }

    /* multiply by the cofactor */
    FUNC17(&p1, &p3);
    FUNC14(&p2, &p1);
    FUNC16(&p1, &p2);
    FUNC14(&p2, &p1);
    FUNC16(&p1, &p2);
    FUNC15(&p3, &p1);

    FUNC18(s, &p3);
}