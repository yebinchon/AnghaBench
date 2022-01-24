#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int (* secp256k1_nonce_function ) (unsigned char*,unsigned char const*,unsigned char const*,int /*<<< orphan*/ *,void*,unsigned int) ;
typedef  unsigned char secp256k1_ecdsa_signature ;
struct TYPE_3__ {int /*<<< orphan*/  ecmult_gen_ctx; } ;
typedef  TYPE_1__ secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (unsigned char*,unsigned char const*,unsigned char const*,int /*<<< orphan*/ *,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char const*,int*) ; 

int FUNC10(const secp256k1_context* ctx, secp256k1_ecdsa_signature *signature, const unsigned char *msg32, const unsigned char *seckey, secp256k1_nonce_function noncefp, const void* noncedata) {
    secp256k1_scalar r, s;
    secp256k1_scalar sec, non, msg;
    int ret = 0;
    int overflow = 0;
    FUNC1(ctx != NULL);
    FUNC0(FUNC5(&ctx->ecmult_gen_ctx));
    FUNC0(msg32 != NULL);
    FUNC0(signature != NULL);
    FUNC0(seckey != NULL);
    if (noncefp == NULL) {
        noncefp = secp256k1_nonce_function_default;
    }

    FUNC9(&sec, seckey, &overflow);
    /* Fail if the secret key is invalid. */
    if (!overflow && !FUNC8(&sec)) {
        unsigned char nonce32[32];
        unsigned int count = 0;
        FUNC9(&msg, msg32, NULL);
        while (1) {
            ret = noncefp(nonce32, msg32, seckey, NULL, (void*)noncedata, count);
            if (!ret) {
                break;
            }
            FUNC9(&non, nonce32, &overflow);
            if (!overflow && !FUNC8(&non)) {
                if (FUNC3(&ctx->ecmult_gen_ctx, &r, &s, &sec, &msg, &non, NULL)) {
                    break;
                }
            }
            count++;
        }
        FUNC2(nonce32, 0, 32);
        FUNC7(&msg);
        FUNC7(&non);
        FUNC7(&sec);
    }
    if (ret) {
        FUNC4(signature, &r, &s);
    } else {
        FUNC2(signature, 0, sizeof(*signature));
    }
    return ret;
}