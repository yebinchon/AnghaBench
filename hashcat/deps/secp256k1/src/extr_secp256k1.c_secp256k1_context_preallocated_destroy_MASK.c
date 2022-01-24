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
struct TYPE_4__ {int /*<<< orphan*/  ecmult_gen_ctx; int /*<<< orphan*/  ecmult_ctx; } ;
typedef  TYPE_1__ secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* secp256k1_context_no_precomp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(secp256k1_context* ctx) {
    FUNC0(ctx != secp256k1_context_no_precomp);
    if (ctx != NULL) {
        FUNC1(&ctx->ecmult_ctx);
        FUNC2(&ctx->ecmult_gen_ctx);
    }
}