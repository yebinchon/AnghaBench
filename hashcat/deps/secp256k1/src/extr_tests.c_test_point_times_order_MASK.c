#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
struct TYPE_2__ {int /*<<< orphan*/  ecmult_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* ctx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  secp256k1_ge_const_g ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC14(const secp256k1_gej *point) {
    /* X * (point + G) + (order-X) * (pointer + G) = 0 */
    secp256k1_scalar x;
    secp256k1_scalar nx;
    secp256k1_scalar zero = FUNC1(0, 0, 0, 0, 0, 0, 0, 0);
    secp256k1_scalar one = FUNC1(0, 0, 0, 0, 0, 0, 0, 1);
    secp256k1_gej res1, res2;
    secp256k1_ge res3;
    unsigned char pub[65];
    size_t psize = 65;
    FUNC4(&x);
    FUNC13(&nx, &x);
    FUNC6(&ctx->ecmult_ctx, &res1, point, &x, &x); /* calc res1 = x * point + x * G; */
    FUNC6(&ctx->ecmult_ctx, &res2, point, &nx, &nx); /* calc res2 = (order - x) * point + (order - x) * G; */
    FUNC10(&res1, &res1, &res2, NULL);
    FUNC0(FUNC11(&res1));
    FUNC0(FUNC12(&res1) == 0);
    FUNC9(&res3, &res1);
    FUNC0(FUNC7(&res3));
    FUNC0(FUNC8(&res3) == 0);
    FUNC0(FUNC5(&res3, pub, &psize, 0) == 0);
    psize = 65;
    FUNC0(FUNC5(&res3, pub, &psize, 1) == 0);
    /* check zero/one edge cases */
    FUNC6(&ctx->ecmult_ctx, &res1, point, &zero, &zero);
    FUNC9(&res3, &res1);
    FUNC0(FUNC7(&res3));
    FUNC6(&ctx->ecmult_ctx, &res1, point, &one, &zero);
    FUNC9(&res3, &res1);
    FUNC3(&res3, point);
    FUNC6(&ctx->ecmult_ctx, &res1, point, &zero, &one);
    FUNC9(&res3, &res1);
    FUNC2(&res3, &secp256k1_ge_const_g);
}