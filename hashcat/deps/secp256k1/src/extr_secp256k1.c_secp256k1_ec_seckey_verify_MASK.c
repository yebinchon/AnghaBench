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
typedef  int /*<<< orphan*/  secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,int*) ; 

int FUNC5(const secp256k1_context* ctx, const unsigned char *seckey) {
    secp256k1_scalar sec;
    int ret;
    int overflow;
    FUNC1(ctx != NULL);
    FUNC0(seckey != NULL);

    FUNC4(&sec, seckey, &overflow);
    ret = !overflow && !FUNC3(&sec);
    FUNC2(&sec);
    return ret;
}