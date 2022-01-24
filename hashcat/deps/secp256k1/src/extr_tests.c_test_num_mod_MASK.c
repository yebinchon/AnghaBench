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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7(void) {
    int i;
    secp256k1_scalar s;
    secp256k1_num order, n;

    /* check that 0 mod anything is 0 */
    FUNC1(&s);
    FUNC5(&order, &s);
    FUNC6(&s, 0);
    FUNC5(&n, &s);
    FUNC4(&n, &order);
    FUNC0(FUNC3(&n));

    /* check that anything mod 1 is 0 */
    FUNC6(&s, 1);
    FUNC5(&order, &s);
    FUNC5(&n, &s);
    FUNC4(&n, &order);
    FUNC0(FUNC3(&n));

    /* check that increasing the number past 2^256 does not break this */
    FUNC1(&s);
    FUNC5(&n, &s);
    /* multiply by 2^8, which'll test this case with high probability */
    for (i = 0; i < 8; ++i) {
        FUNC2(&n, &n, &n);
    }
    FUNC4(&n, &order);
    FUNC0(FUNC3(&n));
}