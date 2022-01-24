#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ infinity; int /*<<< orphan*/  y; int /*<<< orphan*/  z; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ secp256k1_gej ;
struct TYPE_6__ {scalar_t__ infinity; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(const secp256k1_ge *a, const secp256k1_gej *b) {
    secp256k1_fe z2s;
    secp256k1_fe u1, u2, s1, s2;
    FUNC0(a->infinity == b->infinity);
    if (a->infinity) {
        return;
    }
    /* Check a.x * b.z^2 == b.x && a.y * b.z^3 == b.y, to avoid inverses. */
    FUNC4(&z2s, &b->z);
    FUNC2(&u1, &a->x, &z2s);
    u2 = b->x; FUNC3(&u2);
    FUNC2(&s1, &a->y, &z2s); FUNC2(&s1, &s1, &b->z);
    s2 = b->y; FUNC3(&s2);
    FUNC0(FUNC1(&u1, &u2));
    FUNC0(FUNC1(&s1, &s2));
}