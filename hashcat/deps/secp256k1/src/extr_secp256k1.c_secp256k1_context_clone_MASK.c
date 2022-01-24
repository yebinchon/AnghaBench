#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  error_callback; } ;
typedef  TYPE_1__ secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*,TYPE_1__*) ; 
 size_t FUNC3 (TYPE_1__ const*) ; 

secp256k1_context* FUNC4(const secp256k1_context* ctx) {
    secp256k1_context* ret;
    size_t prealloc_size;

    FUNC0(ctx != NULL);
    prealloc_size = FUNC3(ctx);
    ret = (secp256k1_context*)FUNC1(&ctx->error_callback, prealloc_size);
    ret = FUNC2(ctx, ret);
    return ret;
}