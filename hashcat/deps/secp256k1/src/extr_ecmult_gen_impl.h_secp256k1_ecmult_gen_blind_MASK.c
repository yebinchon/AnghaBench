#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_rfc6979_hmac_sha256 ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_fe ;
struct TYPE_4__ {int /*<<< orphan*/  initial; int /*<<< orphan*/  blind; } ;
typedef  TYPE_1__ secp256k1_ecmult_gen_context ;
typedef  int /*<<< orphan*/  keydata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  secp256k1_ge_const_g ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC19(secp256k1_ecmult_gen_context *ctx, const unsigned char *seed32) {
    secp256k1_scalar b;
    secp256k1_gej gb;
    secp256k1_fe s;
    unsigned char nonce32[32];
    secp256k1_rfc6979_hmac_sha256 rng;
    int retry;
    unsigned char keydata[64] = {0};
    if (seed32 == NULL) {
        /* When seed is NULL, reset the initial point and blinding value. */
        FUNC9(&ctx->initial, &secp256k1_ge_const_g);
        FUNC7(&ctx->initial, &ctx->initial);
        FUNC18(&ctx->blind, 1);
    }
    /* The prior blinding value (if not reset) is chained forward by including it in the hash. */
    FUNC14(nonce32, &ctx->blind);
    /** Using a CSPRNG allows a failure free interface, avoids needing large amounts of random data,
     *   and guards against weak or adversarial seeds.  This is a simpler and safer interface than
     *   asking the caller for blinding values directly and expecting them to retry on failure.
     */
    FUNC0(keydata, nonce32, 32);
    if (seed32 != NULL) {
        FUNC0(keydata + 32, seed32, 32);
    }
    FUNC12(&rng, keydata, seed32 ? 64 : 32);
    FUNC1(keydata, 0, sizeof(keydata));
    /* Retry for out of range results to achieve uniformity. */
    do {
        FUNC11(&rng, nonce32, 32);
        retry = !FUNC5(&s, nonce32);
        retry = retry || FUNC4(&s);
    } while (retry); /* This branch true is cryptographically unreachable. Requires sha256_hmac output > Fp. */
    /* Randomize the projection to defend against multiplier sidechannels. */
    FUNC8(&ctx->initial, &s);
    FUNC3(&s);
    do {
        FUNC11(&rng, nonce32, 32);
        FUNC17(&b, nonce32, &retry);
        /* A blinding value of 0 works, but would undermine the projection hardening. */
        retry = retry || FUNC15(&b);
    } while (retry); /* This branch true is cryptographically unreachable. Requires sha256_hmac output > order. */
    FUNC10(&rng);
    FUNC1(nonce32, 0, 32);
    FUNC2(ctx, &gb, &b);
    FUNC16(&b, &b);
    ctx->blind = b;
    ctx->initial = gb;
    FUNC13(&b);
    FUNC6(&gb);
}