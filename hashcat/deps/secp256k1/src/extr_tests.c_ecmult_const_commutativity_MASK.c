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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  secp256k1_ge_const_g ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(void) {
    secp256k1_scalar a;
    secp256k1_scalar b;
    secp256k1_gej res1;
    secp256k1_gej res2;
    secp256k1_ge mid1;
    secp256k1_ge mid2;
    FUNC1(&a);
    FUNC1(&b);

    FUNC2(&res1, &secp256k1_ge_const_g, &a, 256);
    FUNC2(&res2, &secp256k1_ge_const_g, &b, 256);
    FUNC3(&mid1, &res1);
    FUNC3(&mid2, &res2);
    FUNC2(&res1, &mid1, &b, 256);
    FUNC2(&res2, &mid2, &a, 256);
    FUNC3(&mid1, &res1);
    FUNC3(&mid2, &res2);
    FUNC0(&mid1, &mid2);
}