#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ecmult_ctx; int /*<<< orphan*/  ecmult_gen_ctx; } ;
typedef  TYPE_1__ secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__ const*,size_t) ; 
 size_t FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

secp256k1_context* FUNC6(const secp256k1_context* ctx, void* prealloc) {
    size_t prealloc_size;
    secp256k1_context* ret;
    FUNC1(ctx != NULL);
    FUNC0(prealloc != NULL);

    prealloc_size = FUNC3(ctx);
    ret = (secp256k1_context*)prealloc;
    FUNC2(ret, ctx, prealloc_size);
    FUNC5(&ret->ecmult_gen_ctx, &ctx->ecmult_gen_ctx);
    FUNC4(&ret->ecmult_ctx, &ctx->ecmult_ctx);
    return ret;
}