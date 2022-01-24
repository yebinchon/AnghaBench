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
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINDOW_A ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(secp256k1_ge *pre, secp256k1_fe *globalz, const secp256k1_gej *a) {
    secp256k1_gej prej[FUNC0(WINDOW_A)];
    secp256k1_fe zr[FUNC0(WINDOW_A)];

    /* Compute the odd multiples in Jacobian form. */
    FUNC1(FUNC0(WINDOW_A), prej, zr, a);
    /* Bring them to the same Z denominator. */
    FUNC2(FUNC0(WINDOW_A), pre, globalz, prej, zr);
}