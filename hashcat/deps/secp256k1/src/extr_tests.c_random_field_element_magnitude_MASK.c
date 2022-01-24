#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int magnitude; } ;
typedef  TYPE_1__ secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int) ; 

void FUNC7(secp256k1_fe *fe) {
    secp256k1_fe zero;
    int n = FUNC6(9);
    FUNC5(fe);
    if (n == 0) {
        return;
    }
    FUNC2(&zero);
    FUNC4(&zero, &zero, 0);
    FUNC3(&zero, n - 1);
    FUNC1(fe, &zero);
#ifdef VERIFY
    CHECK(fe->magnitude == n);
#endif
}