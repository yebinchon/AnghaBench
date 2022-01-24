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
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_num ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

void FUNC11(void) {
    int i;
    secp256k1_scalar s;
    secp256k1_num n1;
    secp256k1_num n2;
    secp256k1_num n1p2, n2p1, n1m2, n2m1;
    FUNC2(&n1); /* n1 = R1 */
    if (FUNC8(1)) {
        FUNC1(&n1);
    }
    FUNC2(&n2); /* n2 = R2 */
    if (FUNC8(1)) {
        FUNC1(&n2);
    }
    FUNC3(&n1p2, &n1, &n2); /* n1p2 = R1 + R2 */
    FUNC3(&n2p1, &n2, &n1); /* n2p1 = R2 + R1 */
    FUNC7(&n1m2, &n1, &n2); /* n1m2 = R1 - R2 */
    FUNC7(&n2m1, &n2, &n1); /* n2m1 = R2 - R1 */
    FUNC0(FUNC4(&n1p2, &n2p1));
    FUNC0(!FUNC4(&n1p2, &n1m2));
    FUNC6(&n2m1); /* n2m1 = -R2 + R1 */
    FUNC0(FUNC4(&n2m1, &n1m2));
    FUNC0(!FUNC4(&n2m1, &n1));
    FUNC3(&n2m1, &n2m1, &n2); /* n2m1 = -R2 + R1 + R2 = R1 */
    FUNC0(FUNC4(&n2m1, &n1));
    FUNC0(!FUNC4(&n2p1, &n1));
    FUNC7(&n2p1, &n2p1, &n2); /* n2p1 = R2 + R1 - R2 = R1 */
    FUNC0(FUNC4(&n2p1, &n1));

    /* check is_one */
    FUNC10(&s, 1);
    FUNC9(&n1, &s);
    FUNC0(FUNC5(&n1));
    /* check that 2^n + 1 is never 1 */
    FUNC9(&n2, &s);
    for (i = 0; i < 250; ++i) {
        FUNC3(&n1, &n1, &n1);    /* n1 *= 2 */
        FUNC3(&n1p2, &n1, &n2);  /* n1p2 = n1 + 1 */
        FUNC0(!FUNC5(&n1p2));
    }
}