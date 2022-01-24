#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; int /*<<< orphan*/  T; } ;
typedef  TYPE_1__ ge25519_p3 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  invsqrtamd ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sqrtm1 ; 

void
FUNC12(unsigned char *s, const ge25519_p3 *h)
{
    fe25519 den1, den2;
    fe25519 den_inv;
    fe25519 eden;
    fe25519 inv_sqrt;
    fe25519 ix, iy;
    fe25519 one;
    fe25519 s_;
    fe25519 t_z_inv;
    fe25519 u1, u2;
    fe25519 u1_u2u2;
    fe25519 x_, y_;
    fe25519 x_z_inv;
    fe25519 z_inv;
    fe25519 zmy;
    int     rotate;

    FUNC2(u1, h->Z, h->Y);       /* u1 = Z+Y */
    FUNC9(zmy, h->Z, h->Y);      /* zmy = Z-Y */
    FUNC7(u1, u1, zmy);          /* u1 = (Z+Y)*(Z-Y) */
    FUNC7(u2, h->X, h->Y);       /* u2 = X*Y */

    FUNC8(u1_u2u2, u2);           /* u1_u2u2 = u2^2 */
    FUNC7(u1_u2u2, u1, u1_u2u2); /* u1_u2u2 = u1*u2^2 */

    FUNC0(one);
    (void) FUNC11(inv_sqrt, one, u1_u2u2);
    FUNC7(den1, inv_sqrt, u1);   /* den1 = inv_sqrt*u1 */
    FUNC7(den2, inv_sqrt, u2);   /* den2 = inv_sqrt*u2 */
    FUNC7(z_inv, den1, den2);    /* z_inv = den1*den2 */
    FUNC7(z_inv, z_inv, h->T);   /* z_inv = den1*den2*T */

    FUNC7(ix, h->X, sqrtm1);     /* ix = X*sqrt(-1) */
    FUNC7(iy, h->Y, sqrtm1);     /* iy = Y*sqrt(-1) */
    FUNC7(eden, den1, invsqrtamd); /* eden = den1*sqrt(a-d) */

    FUNC7(t_z_inv, h->T, z_inv); /* t_z_inv = T*z_inv */
    rotate = FUNC6(t_z_inv);

    FUNC5(x_, h->X);
    FUNC5(y_, h->Y);
    FUNC5(den_inv, den2);

    FUNC3(x_, iy, rotate);
    FUNC3(y_, ix, rotate);
    FUNC3(den_inv, eden, rotate);

    FUNC7(x_z_inv, x_, z_inv);
    FUNC4(y_, y_, FUNC6(x_z_inv));

    FUNC9(s_, h->Z, y_);
    FUNC7(s_, den_inv, s_);
    FUNC1(s_, s_);
    FUNC10(s, s_);
}