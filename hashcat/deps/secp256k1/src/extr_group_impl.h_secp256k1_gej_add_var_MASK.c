#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int infinity; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(secp256k1_gej *r, const secp256k1_gej *a, const secp256k1_gej *b, secp256k1_fe *rzr) {
    /* Operations: 12 mul, 4 sqr, 2 normalize, 12 mul_int/add/negate */
    secp256k1_fe z22, z12, u1, u2, s1, s2, h, i, i2, h2, h3, t;

    if (a->infinity) {
        FUNC0(rzr == NULL);
        *r = *b;
        return;
    }

    if (b->infinity) {
        if (rzr != NULL) {
            FUNC6(rzr, 1);
        }
        *r = *a;
        return;
    }

    r->infinity = 0;
    FUNC7(&z22, &b->z);
    FUNC7(&z12, &a->z);
    FUNC2(&u1, &a->x, &z22);
    FUNC2(&u2, &b->x, &z12);
    FUNC2(&s1, &a->y, &z22); FUNC2(&s1, &s1, &b->z);
    FUNC2(&s2, &b->y, &z12); FUNC2(&s2, &s2, &a->z);
    FUNC4(&h, &u1, 1); FUNC1(&h, &u2);
    FUNC4(&i, &s1, 1); FUNC1(&i, &s2);
    if (FUNC5(&h)) {
        if (FUNC5(&i)) {
            FUNC8(r, a, rzr);
        } else {
            if (rzr != NULL) {
                FUNC6(rzr, 0);
            }
            r->infinity = 1;
        }
        return;
    }
    FUNC7(&i2, &i);
    FUNC7(&h2, &h);
    FUNC2(&h3, &h, &h2);
    FUNC2(&h, &h, &b->z);
    if (rzr != NULL) {
        *rzr = h;
    }
    FUNC2(&r->z, &a->z, &h);
    FUNC2(&t, &u1, &h2);
    r->x = t; FUNC3(&r->x, 2); FUNC1(&r->x, &h3); FUNC4(&r->x, &r->x, 3); FUNC1(&r->x, &i2);
    FUNC4(&r->y, &r->x, 5); FUNC1(&r->y, &t); FUNC2(&r->y, &r->y, &i);
    FUNC2(&h3, &h3, &s1); FUNC4(&h3, &h3, 1);
    FUNC1(&r->y, &h3);
}