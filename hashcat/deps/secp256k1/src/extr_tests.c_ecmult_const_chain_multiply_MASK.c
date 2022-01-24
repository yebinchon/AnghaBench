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
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  secp256k1_ge_const_g ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(void) {
    /* Check known result (randomly generated test problem from sage) */
    const secp256k1_scalar scalar = FUNC1(
        0x4968d524, 0x2abf9b7a, 0x466abbcf, 0x34b11b6d,
        0xcd83d307, 0x827bed62, 0x05fad0ce, 0x18fae63b
    );
    const secp256k1_gej expected_point = FUNC0(
        0x5494c15d, 0x32099706, 0xc2395f94, 0x348745fd,
        0x757ce30e, 0x4e8c90fb, 0xa2bad184, 0xf883c69f,
        0x5d195d20, 0xe191bf7f, 0x1be3e55f, 0x56a80196,
        0x6071ad01, 0xf1462f66, 0xc997fa94, 0xdb858435
    );
    secp256k1_gej point;
    secp256k1_ge res;
    int i;

    FUNC5(&point, &secp256k1_ge_const_g);
    for (i = 0; i < 100; ++i) {
        secp256k1_ge tmp;
        FUNC4(&tmp, &point);
        FUNC3(&point, &tmp, &scalar, 256);
    }
    FUNC4(&res, &point);
    FUNC2(&res, &expected_point);
}