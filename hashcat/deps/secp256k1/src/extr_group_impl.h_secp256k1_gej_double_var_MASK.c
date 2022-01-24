#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  z; scalar_t__ infinity; } ;
typedef  TYPE_1__ secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(secp256k1_gej *r, const secp256k1_gej *a, secp256k1_fe *rzr) {
    /* Operations: 3 mul, 4 sqr, 0 normalize, 12 mul_int/add/negate.
     *
     * Note that there is an implementation described at
     *     https://hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-0.html#doubling-dbl-2009-l
     * which trades a multiply for a square, but in practice this is actually slower,
     * mainly because it requires more normalizations.
     */
    secp256k1_fe t1,t2,t3,t4;
    /** For secp256k1, 2Q is infinity if and only if Q is infinity. This is because if 2Q = infinity,
     *  Q must equal -Q, or that Q.y == -(Q.y), or Q.y is 0. For a point on y^2 = x^3 + 7 to have
     *  y=0, x^3 must be -7 mod p. However, -7 has no cube root mod p.
     *
     *  Having said this, if this function receives a point on a sextic twist, e.g. by
     *  a fault attack, it is possible for y to be 0. This happens for y^2 = x^3 + 6,
     *  since -6 does have a cube root mod p. For this point, this function will not set
     *  the infinity flag even though the point doubles to infinity, and the result
     *  point will be gibberish (z = 0 but infinity = 0).
     */
    r->infinity = a->infinity;
    if (r->infinity) {
        if (rzr != NULL) {
            FUNC5(rzr, 1);
        }
        return;
    }

    if (rzr != NULL) {
        *rzr = a->y;
        FUNC4(rzr);
        FUNC2(rzr, 2);
    }

    FUNC1(&r->z, &a->z, &a->y);
    FUNC2(&r->z, 2);       /* Z' = 2*Y*Z (2) */
    FUNC6(&t1, &a->x);
    FUNC2(&t1, 3);         /* T1 = 3*X^2 (3) */
    FUNC6(&t2, &t1);           /* T2 = 9*X^4 (1) */
    FUNC6(&t3, &a->y);
    FUNC2(&t3, 2);         /* T3 = 2*Y^2 (2) */
    FUNC6(&t4, &t3);
    FUNC2(&t4, 2);         /* T4 = 8*Y^4 (2) */
    FUNC1(&t3, &t3, &a->x);    /* T3 = 2*X*Y^2 (1) */
    r->x = t3;
    FUNC2(&r->x, 4);       /* X' = 8*X*Y^2 (4) */
    FUNC3(&r->x, &r->x, 4); /* X' = -8*X*Y^2 (5) */
    FUNC0(&r->x, &t2);         /* X' = 9*X^4 - 8*X*Y^2 (6) */
    FUNC3(&t2, &t2, 1);     /* T2 = -9*X^4 (2) */
    FUNC2(&t3, 6);         /* T3 = 12*X*Y^2 (6) */
    FUNC0(&t3, &t2);           /* T3 = 12*X*Y^2 - 9*X^4 (8) */
    FUNC1(&r->y, &t1, &t3);    /* Y' = 36*X^3*Y^2 - 27*X^6 (1) */
    FUNC3(&t2, &t4, 2);     /* T2 = -8*Y^4 (3) */
    FUNC0(&r->y, &t2);         /* Y' = 36*X^3*Y^2 - 27*X^6 - 8*Y^4 (4) */
}