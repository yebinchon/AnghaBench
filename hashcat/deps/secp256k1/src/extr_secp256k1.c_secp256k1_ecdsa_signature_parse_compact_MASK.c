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
typedef  int /*<<< orphan*/  secp256k1_ecdsa_signature ;
typedef  int /*<<< orphan*/  secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,int*) ; 

int FUNC5(const secp256k1_context* ctx, secp256k1_ecdsa_signature* sig, const unsigned char *input64) {
    secp256k1_scalar r, s;
    int ret = 1;
    int overflow = 0;

    FUNC1(ctx != NULL);
    FUNC0(sig != NULL);
    FUNC0(input64 != NULL);

    FUNC4(&r, &input64[0], &overflow);
    ret &= !overflow;
    FUNC4(&s, &input64[32], &overflow);
    ret &= !overflow;
    if (ret) {
        FUNC3(sig, &r, &s);
    } else {
        FUNC2(sig, 0, sizeof(*sig));
    }
    return ret;
}