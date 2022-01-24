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
struct TYPE_3__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; int /*<<< orphan*/  T; int /*<<< orphan*/  Z; } ;
typedef  TYPE_1__ ge25519_p3 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  d ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char const*) ; 
 unsigned char const FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sqrtm1 ; 

int
FUNC10(ge25519_p3 *h, const unsigned char *s)
{
    fe25519 u;
    fe25519 v;
    fe25519 v3;
    fe25519 vxx;
    fe25519 m_root_check, p_root_check;

    FUNC2(h->Y, s);
    FUNC0(h->Z);
    FUNC8(u, h->Y);
    FUNC5(v, u, d);
    FUNC9(u, u, h->Z); /* u = y^2-1 */
    FUNC1(v, v, h->Z); /* v = dy^2+1 */

    FUNC8(v3, v);
    FUNC5(v3, v3, v); /* v3 = v^3 */
    FUNC8(h->X, v3);
    FUNC5(h->X, h->X, v);
    FUNC5(h->X, h->X, u); /* x = uv^7 */

    FUNC7(h->X, h->X); /* x = (uv^7)^((q-5)/8) */
    FUNC5(h->X, h->X, v3);
    FUNC5(h->X, h->X, u); /* x = uv^3(uv^7)^((q-5)/8) */

    FUNC8(vxx, h->X);
    FUNC5(vxx, vxx, v);
    FUNC9(m_root_check, vxx, u); /* vx^2-u */
    if (FUNC4(m_root_check) == 0) {
        FUNC1(p_root_check, vxx, u); /* vx^2+u */
        if (FUNC4(p_root_check) == 0) {
            return -1;
        }
        FUNC5(h->X, h->X, sqrtm1);
    }

    if (FUNC3(h->X) == (s[31] >> 7)) {
        FUNC6(h->X, h->X);
    }
    FUNC5(h->T, h->X, h->Y);

    return 0;
}