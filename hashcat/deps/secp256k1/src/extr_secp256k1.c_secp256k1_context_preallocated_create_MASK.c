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
struct TYPE_3__ {int /*<<< orphan*/  ecmult_ctx; int /*<<< orphan*/  ecmult_gen_ctx; int /*<<< orphan*/  illegal_callback; int /*<<< orphan*/  error_callback; } ;
typedef  TYPE_1__ secp256k1_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int SECP256K1_FLAGS_BIT_CONTEXT_SIGN ; 
 unsigned int SECP256K1_FLAGS_BIT_CONTEXT_VERIFY ; 
 unsigned int SECP256K1_FLAGS_TYPE_CONTEXT ; 
 unsigned int SECP256K1_FLAGS_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_error_callback ; 
 int /*<<< orphan*/  default_illegal_callback ; 
 scalar_t__ FUNC2 (void**,int,void* const,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

secp256k1_context* FUNC9(void* prealloc, unsigned int flags) {
    void* const base = prealloc;
    size_t prealloc_size;
    secp256k1_context* ret;

    FUNC1(prealloc != NULL);
    prealloc_size = FUNC4(flags);
    ret = (secp256k1_context*)FUNC2(&prealloc, sizeof(secp256k1_context), base, prealloc_size);
    ret->illegal_callback = default_illegal_callback;
    ret->error_callback = default_error_callback;

    if (FUNC0((flags & SECP256K1_FLAGS_TYPE_MASK) != SECP256K1_FLAGS_TYPE_CONTEXT, 0)) {
            FUNC3(&ret->illegal_callback,
                                    "Invalid flags");
            return NULL;
    }

    FUNC6(&ret->ecmult_ctx);
    FUNC8(&ret->ecmult_gen_ctx);

    if (flags & SECP256K1_FLAGS_BIT_CONTEXT_SIGN) {
        FUNC7(&ret->ecmult_gen_ctx, &prealloc);
    }
    if (flags & SECP256K1_FLAGS_BIT_CONTEXT_VERIFY) {
        FUNC5(&ret->ecmult_ctx, &prealloc);
    }

    return (secp256k1_context*) ret;
}