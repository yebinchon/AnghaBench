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
struct TYPE_7__ {int /*<<< orphan*/  T2d; int /*<<< orphan*/  Z; int /*<<< orphan*/  YplusX; int /*<<< orphan*/  YminusX; } ;
typedef  TYPE_1__ const ge25519_cached ;

/* Variables and functions */
 unsigned char const FUNC0 (unsigned char const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,TYPE_1__ const*,unsigned char const) ; 
 unsigned char FUNC5 (char const) ; 

__attribute__((used)) static void
FUNC6(ge25519_cached *t, const ge25519_cached cached[8], const signed char b)
{
    ge25519_cached      minust;
    const unsigned char bnegative = FUNC5(b);
    const unsigned char babs      = b - (((-bnegative) & b) * ((signed char) 1 << 1));

    FUNC3(t);
    FUNC4(t, &cached[0], FUNC0(babs, 1));
    FUNC4(t, &cached[1], FUNC0(babs, 2));
    FUNC4(t, &cached[2], FUNC0(babs, 3));
    FUNC4(t, &cached[3], FUNC0(babs, 4));
    FUNC4(t, &cached[4], FUNC0(babs, 5));
    FUNC4(t, &cached[5], FUNC0(babs, 6));
    FUNC4(t, &cached[6], FUNC0(babs, 7));
    FUNC4(t, &cached[7], FUNC0(babs, 8));
    FUNC1(minust.YplusX, t->YminusX);
    FUNC1(minust.YminusX, t->YplusX);
    FUNC1(minust.Z, t->Z);
    FUNC2(minust.T2d, t->T2d);
    FUNC4(t, &minust, bnegative);
}