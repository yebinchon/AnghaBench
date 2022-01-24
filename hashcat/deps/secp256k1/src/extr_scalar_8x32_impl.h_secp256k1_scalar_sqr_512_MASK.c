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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/ * d; } ;
typedef  TYPE_1__ secp256k1_scalar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(uint32_t *l, const secp256k1_scalar *a) {
    /* 96 bit accumulator. */
    uint32_t c0 = 0, c1 = 0, c2 = 0;

    /* l[0..15] = a[0..7]^2. */
    FUNC5(a->d[0], a->d[0]);
    FUNC2(l[0]);
    FUNC4(a->d[0], a->d[1]);
    FUNC1(l[1]);
    FUNC4(a->d[0], a->d[2]);
    FUNC3(a->d[1], a->d[1]);
    FUNC1(l[2]);
    FUNC4(a->d[0], a->d[3]);
    FUNC4(a->d[1], a->d[2]);
    FUNC1(l[3]);
    FUNC4(a->d[0], a->d[4]);
    FUNC4(a->d[1], a->d[3]);
    FUNC3(a->d[2], a->d[2]);
    FUNC1(l[4]);
    FUNC4(a->d[0], a->d[5]);
    FUNC4(a->d[1], a->d[4]);
    FUNC4(a->d[2], a->d[3]);
    FUNC1(l[5]);
    FUNC4(a->d[0], a->d[6]);
    FUNC4(a->d[1], a->d[5]);
    FUNC4(a->d[2], a->d[4]);
    FUNC3(a->d[3], a->d[3]);
    FUNC1(l[6]);
    FUNC4(a->d[0], a->d[7]);
    FUNC4(a->d[1], a->d[6]);
    FUNC4(a->d[2], a->d[5]);
    FUNC4(a->d[3], a->d[4]);
    FUNC1(l[7]);
    FUNC4(a->d[1], a->d[7]);
    FUNC4(a->d[2], a->d[6]);
    FUNC4(a->d[3], a->d[5]);
    FUNC3(a->d[4], a->d[4]);
    FUNC1(l[8]);
    FUNC4(a->d[2], a->d[7]);
    FUNC4(a->d[3], a->d[6]);
    FUNC4(a->d[4], a->d[5]);
    FUNC1(l[9]);
    FUNC4(a->d[3], a->d[7]);
    FUNC4(a->d[4], a->d[6]);
    FUNC3(a->d[5], a->d[5]);
    FUNC1(l[10]);
    FUNC4(a->d[4], a->d[7]);
    FUNC4(a->d[5], a->d[6]);
    FUNC1(l[11]);
    FUNC4(a->d[5], a->d[7]);
    FUNC3(a->d[6], a->d[6]);
    FUNC1(l[12]);
    FUNC4(a->d[6], a->d[7]);
    FUNC1(l[13]);
    FUNC5(a->d[7], a->d[7]);
    FUNC2(l[14]);
    FUNC0(c1 == 0);
    l[15] = c0;
}