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
struct TYPE_3__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ ge25519_p3 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  d ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(const ge25519_p3 *p)
{
    fe25519 x2;
    fe25519 y2;
    fe25519 z2;
    fe25519 z4;
    fe25519 t0;
    fe25519 t1;

    FUNC3(x2, p->X);
    FUNC3(y2, p->Y);
    FUNC3(z2, p->Z);
    FUNC4(t0, y2, x2);
    FUNC2(t0, t0, z2);

    FUNC2(t1, x2, y2);
    FUNC2(t1, t1, d);
    FUNC3(z4, z2);
    FUNC0(t1, t1, z4);
    FUNC4(t0, t0, t1);

    return FUNC1(t0);
}