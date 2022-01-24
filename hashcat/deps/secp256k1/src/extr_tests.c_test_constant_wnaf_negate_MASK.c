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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(const secp256k1_scalar *number) {
    secp256k1_scalar neg1 = *number;
    secp256k1_scalar neg2 = *number;
    int sign1 = 1;
    int sign2 = 1;

    if (!FUNC3(&neg1, 0, 1)) {
        FUNC5(&neg1, &neg1);
        sign1 = -1;
    }
    sign2 = FUNC1(&neg2, FUNC4(&neg2));
    FUNC0(sign1 == sign2);
    FUNC0(FUNC2(&neg1, &neg2));
}