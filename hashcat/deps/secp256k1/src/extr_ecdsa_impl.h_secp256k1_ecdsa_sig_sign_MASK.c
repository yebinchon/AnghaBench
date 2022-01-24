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
typedef  int /*<<< orphan*/  const secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_ecmult_gen_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*,unsigned char*,int*) ; 

__attribute__((used)) static int FUNC16(const secp256k1_ecmult_gen_context *ctx, secp256k1_scalar *sigr, secp256k1_scalar *sigs, const secp256k1_scalar *seckey, const secp256k1_scalar *message, const secp256k1_scalar *nonce, int *recid) {
    unsigned char b[32];
    secp256k1_gej rp;
    secp256k1_ge r;
    secp256k1_scalar n;
    int overflow = 0;

    FUNC1(ctx, &rp, nonce);
    FUNC6(&r, &rp);
    FUNC4(&r.x);
    FUNC4(&r.y);
    FUNC2(b, &r.x);
    FUNC15(sigr, b, &overflow);
    /* These two conditions should be checked before calling */
    FUNC0(!FUNC12(sigr));
    FUNC0(overflow == 0);

    if (recid) {
        /* The overflow condition is cryptographically unreachable as hitting it requires finding the discrete log
         * of some P where P.x >= order, and only 1 in about 2^127 points meet this criteria.
         */
        *recid = (overflow ? 2 : 0) | (FUNC3(&r.y) ? 1 : 0);
    }
    FUNC13(&n, sigr, seckey);
    FUNC8(&n, &n, message);
    FUNC10(sigs, nonce);
    FUNC13(sigs, sigs, &n);
    FUNC9(&n);
    FUNC7(&rp);
    FUNC5(&r);
    if (FUNC12(sigs)) {
        return 0;
    }
    if (FUNC11(sigs)) {
        FUNC14(sigs, sigs);
        if (recid) {
            *recid ^= 1;
        }
    }
    return 1;
}