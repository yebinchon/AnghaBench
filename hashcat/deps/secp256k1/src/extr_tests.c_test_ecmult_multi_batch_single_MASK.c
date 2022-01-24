#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scratch ;
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  (* secp256k1_ecmult_multi_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ;
struct TYPE_5__ {int /*<<< orphan*/ * pt; int /*<<< orphan*/ * sc; } ;
typedef  TYPE_1__ ecmult_multi_data ;
struct TYPE_6__ {int /*<<< orphan*/  error_callback; int /*<<< orphan*/  ecmult_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* ctx ; 
 int /*<<< orphan*/  ecmult_multi_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(secp256k1_ecmult_multi_func ecmult_multi) {
    secp256k1_scalar szero;
    secp256k1_scalar sc[32];
    secp256k1_ge pt[32];
    secp256k1_gej r;
    ecmult_multi_data data;
    secp256k1_scratch *scratch_empty;

    data.sc = sc;
    data.pt = pt;
    FUNC1(&szero, 0);

    /* Try to multiply 1 point, but scratch space is empty.*/
    scratch_empty = FUNC2(&ctx->error_callback, 0);
    FUNC0(!ecmult_multi(&ctx->error_callback, &ctx->ecmult_ctx, scratch_empty, &r, &szero, ecmult_multi_callback, &data, 1));
    FUNC3(&ctx->error_callback, scratch_empty);
}