#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

void FUNC6(const secp256k1_fe *a, const secp256k1_fe *k) {
    secp256k1_fe r1, r2;
    int v = FUNC5(&r1, a);
    FUNC0((v == 0) == (k == NULL));

    if (k != NULL) {
        /* Check that the returned root is +/- the given known answer */
        FUNC3(&r2, &r1, 1);
        FUNC1(&r1, k); FUNC1(&r2, k);
        FUNC4(&r1); FUNC4(&r2);
        FUNC0(FUNC2(&r1) || FUNC2(&r2));
    }
}