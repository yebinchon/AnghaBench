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
struct TYPE_3__ {int /*<<< orphan*/  ecmult_ctx; int /*<<< orphan*/  ecmult_gen_ctx; } ;
typedef  TYPE_1__ secp256k1_context ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 scalar_t__ SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE ; 
 scalar_t__ SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

size_t FUNC4(const secp256k1_context* ctx) {
    size_t ret = FUNC0(sizeof(secp256k1_context));
    FUNC1(ctx != NULL);
    if (FUNC3(&ctx->ecmult_gen_ctx)) {
        ret += SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE;
    }
    if (FUNC2(&ctx->ecmult_ctx)) {
        ret += SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE;
    }
    return ret;
}