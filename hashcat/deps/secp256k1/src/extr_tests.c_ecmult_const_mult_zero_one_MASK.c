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
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC9(void) {
    secp256k1_scalar zero = FUNC1(0, 0, 0, 0, 0, 0, 0, 0);
    secp256k1_scalar one = FUNC1(0, 0, 0, 0, 0, 0, 0, 1);
    secp256k1_scalar negone;
    secp256k1_gej res1;
    secp256k1_ge res2;
    secp256k1_ge point;
    FUNC8(&negone, &one);

    FUNC3(&point);
    FUNC4(&res1, &point, &zero, 3);
    FUNC6(&res2, &res1);
    FUNC0(FUNC5(&res2));
    FUNC4(&res1, &point, &one, 2);
    FUNC6(&res2, &res1);
    FUNC2(&res2, &point);
    FUNC4(&res1, &point, &negone, 256);
    FUNC7(&res1, &res1);
    FUNC6(&res2, &res1);
    FUNC2(&res2, &point);
}