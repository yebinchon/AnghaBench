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
struct TYPE_3__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  T; int /*<<< orphan*/  X; int /*<<< orphan*/  Z; } ;
typedef  TYPE_1__ ge25519_p3 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  d ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (unsigned char const*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC12(ge25519_p3 *h, const unsigned char *s)
{
    fe25519 inv_sqrt;
    fe25519 one;
    fe25519 s_;
    fe25519 ss;
    fe25519 u1, u2;
    fe25519 u1u1, u2u2;
    fe25519 v;
    fe25519 v_u2u2;
    int     was_square;

    if (FUNC10(s) == 0) {
        return -1;
    }
    FUNC3(s_, s);
    FUNC8(ss, s_);                /* ss = s^2 */

    FUNC0(u1);
    FUNC9(u1, u1, ss);           /* u1 = 1-ss */
    FUNC8(u1u1, u1);              /* u1u1 = u1^2 */

    FUNC0(u2);
    FUNC2(u2, u2, ss);           /* u2 = 1+ss */
    FUNC8(u2u2, u2);              /* u2u2 = u2^2 */

    FUNC6(v, d, u1u1);           /* v = d*u1^2 */
    FUNC7(v, v);                 /* v = -d*u1^2 */
    FUNC9(v, v, u2u2);           /* v = -(d*u1^2)-u2^2 */

    FUNC6(v_u2u2, v, u2u2);      /* v_u2u2 = v*u2^2 */

    FUNC0(one);
    was_square = FUNC11(inv_sqrt, one, v_u2u2);
    FUNC6(h->X, inv_sqrt, u2);
    FUNC6(h->Y, inv_sqrt, h->X);
    FUNC6(h->Y, h->Y, v);

    FUNC6(h->X, h->X, s_);
    FUNC2(h->X, h->X, h->X);
    FUNC1(h->X, h->X);
    FUNC6(h->Y, u1, h->Y);
    FUNC0(h->Z);
    FUNC6(h->T, h->X, h->Y);

    return - ((1 - was_square) |
              FUNC4(h->T) | FUNC5(h->Y));
}