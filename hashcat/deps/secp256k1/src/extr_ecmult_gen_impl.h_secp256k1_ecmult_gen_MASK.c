#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge_storage ;
struct TYPE_7__ {scalar_t__ infinity; } ;
typedef  TYPE_1__ secp256k1_ge ;
struct TYPE_8__ {int /*<<< orphan*/ *** prec; int /*<<< orphan*/  blind; int /*<<< orphan*/  initial; } ;
typedef  TYPE_2__ secp256k1_ecmult_gen_context ;
typedef  int /*<<< orphan*/  adds ;

/* Variables and functions */
 int ECMULT_GEN_PREC_B ; 
 int ECMULT_GEN_PREC_G ; 
 int ECMULT_GEN_PREC_N ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC8(const secp256k1_ecmult_gen_context *ctx, secp256k1_gej *r, const secp256k1_scalar *gn) {
    secp256k1_ge add;
    secp256k1_ge_storage adds;
    secp256k1_scalar gnb;
    int bits;
    int i, j;
    FUNC0(&adds, 0, sizeof(adds));
    *r = ctx->initial;
    /* Blind scalar/point multiplication by computing (n-b)G + bG instead of nG. */
    FUNC5(&gnb, gn, &ctx->blind);
    add.infinity = 0;
    for (j = 0; j < ECMULT_GEN_PREC_N; j++) {
        bits = FUNC7(&gnb, j * ECMULT_GEN_PREC_B, ECMULT_GEN_PREC_B);
        for (i = 0; i < ECMULT_GEN_PREC_G; i++) {
            /** This uses a conditional move to avoid any secret data in array indexes.
             *   _Any_ use of secret indexes has been demonstrated to result in timing
             *   sidechannels, even when the cache-line access patterns are uniform.
             *  See also:
             *   "A word of warning", CHES 2013 Rump Session, by Daniel J. Bernstein and Peter Schwabe
             *    (https://cryptojedi.org/peter/data/chesrump-20130822.pdf) and
             *   "Cache Attacks and Countermeasures: the Case of AES", RSA 2006,
             *    by Dag Arne Osvik, Adi Shamir, and Eran Tromer
             *    (http://www.tau.ac.il/~tromer/papers/cache.pdf)
             */
            FUNC3(&adds, &(*ctx->prec)[j][i], i == bits);
        }
        FUNC2(&add, &adds);
        FUNC4(r, r, &add);
    }
    bits = 0;
    FUNC1(&add);
    FUNC6(&gnb);
}