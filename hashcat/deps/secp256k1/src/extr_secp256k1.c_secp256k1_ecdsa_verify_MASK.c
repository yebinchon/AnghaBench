#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_ecdsa_signature ;
struct TYPE_5__ {int /*<<< orphan*/  ecmult_ctx; } ;
typedef  TYPE_1__ secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ *) ; 

int FUNC8(const secp256k1_context* ctx, const secp256k1_ecdsa_signature *sig, const unsigned char *msg32, const secp256k1_pubkey *pubkey) {
    secp256k1_ge q;
    secp256k1_scalar r, s;
    secp256k1_scalar m;
    FUNC1(ctx != NULL);
    FUNC0(FUNC4(&ctx->ecmult_ctx));
    FUNC0(msg32 != NULL);
    FUNC0(sig != NULL);
    FUNC0(pubkey != NULL);

    FUNC7(&m, msg32, NULL);
    FUNC3(ctx, &r, &s, sig);
    return (!FUNC6(&s) &&
            FUNC5(ctx, &q, pubkey) &&
            FUNC2(&ctx->ecmult_ctx, &r, &s, &q, &m));
}