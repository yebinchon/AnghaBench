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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC12(void) {
    secp256k1_scalar sqr;
    secp256k1_scalar small;
    secp256k1_scalar five;  /* five is not a quadratic residue */
    secp256k1_num order, n;
    int i;
    /* squares mod 5 are 1, 4 */
    const int jacobi5[10] = { 0, 1, -1, -1, 1, 0, 1, -1, -1, 1 };

    /* check some small values with 5 as the order */
    FUNC10(&five, 5);
    FUNC7(&order, &five);
    for (i = 0; i < 10; ++i) {
        FUNC10(&small, i);
        FUNC7(&n, &small);
        FUNC0(FUNC4(&n, &order) == jacobi5[i]);
    }

    /** test large values with 5 as group order */
    FUNC7(&order, &five);
    /* we first need a scalar which is not a multiple of 5 */
    do {
        secp256k1_num fiven;
        FUNC1(&sqr);
        FUNC7(&fiven, &five);
        FUNC7(&n, &sqr);
        FUNC5(&n, &fiven);
    } while (FUNC3(&n));
    /* next force it to be a residue. 2 is a nonresidue mod 5 so we can
     * just multiply by two, i.e. add the number to itself */
    if (FUNC4(&n, &order) == -1) {
        FUNC2(&n, &n, &n);
    }

    /* test residue */
    FUNC0(FUNC4(&n, &order) == 1);
    /* test nonresidue */
    FUNC2(&n, &n, &n);
    FUNC0(FUNC4(&n, &order) == -1);

    /** test with secp group order as order */
    FUNC9(&order);
    FUNC1(&sqr);
    FUNC11(&sqr, &sqr);
    /* test residue */
    FUNC7(&n, &sqr);
    FUNC0(FUNC4(&n, &order) == 1);
    /* test nonresidue */
    FUNC8(&sqr, &sqr, &five);
    FUNC7(&n, &sqr);
    FUNC0(FUNC4(&n, &order) == -1);
    /* test multiple of the order*/
    FUNC0(FUNC4(&order, &order) == 0);

    /* check one less than the order */
    FUNC10(&small, 1);
    FUNC7(&n, &small);
    FUNC6(&n, &order, &n);
    FUNC0(FUNC4(&n, &order) == 1);  /* sage confirms this is 1 */
}