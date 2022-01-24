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
typedef  int /*<<< orphan*/  secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
struct TYPE_3__ {int /*<<< orphan*/  ecmult_gen_ctx; } ;
typedef  TYPE_1__ secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char const*,int*) ; 

int FUNC10(const secp256k1_context* ctx, secp256k1_pubkey *pubkey, const unsigned char *seckey) {
    secp256k1_gej pj;
    secp256k1_ge p;
    secp256k1_scalar sec;
    int overflow;
    int ret = 0;
    FUNC1(ctx != NULL);
    FUNC0(pubkey != NULL);
    FUNC2(pubkey, 0, sizeof(*pubkey));
    FUNC0(FUNC4(&ctx->ecmult_gen_ctx));
    FUNC0(seckey != NULL);

    FUNC9(&sec, seckey, &overflow);
    ret = !overflow && !FUNC8(&sec);
    if (ret) {
        FUNC3(&ctx->ecmult_gen_ctx, &pj, &sec);
        FUNC5(&p, &pj);
        FUNC6(pubkey, &p);
    }
    FUNC7(&sec);
    return ret;
}