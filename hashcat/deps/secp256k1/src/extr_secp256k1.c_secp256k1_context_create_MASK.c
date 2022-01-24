#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  default_error_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 size_t FUNC4 (unsigned int) ; 

secp256k1_context* FUNC5(unsigned int flags) {
    size_t const prealloc_size = FUNC4(flags);
    secp256k1_context* ctx = (secp256k1_context*)FUNC1(&default_error_callback, prealloc_size);
    if (FUNC0(FUNC3(ctx, flags) == NULL, 0)) {
        FUNC2(ctx);
        return NULL;
    }

    return ctx;
}