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
typedef  int /*<<< orphan*/  secp256k1_gej ;
struct TYPE_5__ {int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;
typedef  int /*<<< orphan*/  secp256k1_ecmult_context ;

/* Variables and functions */
 int /*<<< orphan*/  secp256k1_ecdsa_const_order_as_fe ; 
 int /*<<< orphan*/  secp256k1_ecdsa_const_p_minus_order ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(const secp256k1_ecmult_context *ctx, const secp256k1_scalar *sigr, const secp256k1_scalar *sigs, const secp256k1_ge *pubkey, const secp256k1_scalar *message) {
    unsigned char c[32];
    secp256k1_scalar sn, u1, u2;
#if !defined(EXHAUSTIVE_TEST_ORDER)
    secp256k1_fe xr;
#endif
    secp256k1_gej pubkeyj;
    secp256k1_gej pr;

    if (FUNC13(sigr) || FUNC13(sigs)) {
        return 0;
    }

    FUNC12(&sn, sigs);
    FUNC14(&u1, &sn, message);
    FUNC14(&u2, &sn, sigr);
    FUNC9(&pubkeyj, pubkey);
    FUNC0(ctx, &pr, &pubkeyj, &u2, &u1);
    if (FUNC8(&pr)) {
        return 0;
    }

#if defined(EXHAUSTIVE_TEST_ORDER)
{
    secp256k1_scalar computed_r;
    secp256k1_ge pr_ge;
    secp256k1_ge_set_gej(&pr_ge, &pr);
    secp256k1_fe_normalize(&pr_ge.x);

    secp256k1_fe_get_b32(c, &pr_ge.x);
    secp256k1_scalar_set_b32(&computed_r, c, NULL);
    return secp256k1_scalar_eq(sigr, &computed_r);
}
#else
    FUNC11(c, sigr);
    FUNC5(&xr, c);

    /** We now have the recomputed R point in pr, and its claimed x coordinate (modulo n)
     *  in xr. Naively, we would extract the x coordinate from pr (requiring a inversion modulo p),
     *  compute the remainder modulo n, and compare it to xr. However:
     *
     *        xr == X(pr) mod n
     *    <=> exists h. (xr + h * n < p && xr + h * n == X(pr))
     *    [Since 2 * n > p, h can only be 0 or 1]
     *    <=> (xr == X(pr)) || (xr + n < p && xr + n == X(pr))
     *    [In Jacobian coordinates, X(pr) is pr.x / pr.z^2 mod p]
     *    <=> (xr == pr.x / pr.z^2 mod p) || (xr + n < p && xr + n == pr.x / pr.z^2 mod p)
     *    [Multiplying both sides of the equations by pr.z^2 mod p]
     *    <=> (xr * pr.z^2 mod p == pr.x) || (xr + n < p && (xr + n) * pr.z^2 mod p == pr.x)
     *
     *  Thus, we can avoid the inversion, but we have to check both cases separately.
     *  secp256k1_gej_eq_x implements the (xr * pr.z^2 mod p == pr.x) test.
     */
    if (FUNC7(&xr, &pr)) {
        /* xr * pr.z^2 mod p == pr.x, so the signature is valid. */
        return 1;
    }
    if (FUNC2(&xr, &secp256k1_ecdsa_const_p_minus_order) >= 0) {
        /* xr + n >= p, so we can skip testing the second case. */
        return 0;
    }
    FUNC1(&xr, &secp256k1_ecdsa_const_order_as_fe);
    if (FUNC7(&xr, &pr)) {
        /* (xr + n) * pr.z^2 mod p == pr.x, so the signature is valid. */
        return 1;
    }
    return 0;
#endif
}