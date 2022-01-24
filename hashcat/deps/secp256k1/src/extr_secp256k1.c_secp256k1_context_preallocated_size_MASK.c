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
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE ; 
 scalar_t__ SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE ; 
 unsigned int SECP256K1_FLAGS_BIT_CONTEXT_SIGN ; 
 unsigned int SECP256K1_FLAGS_BIT_CONTEXT_VERIFY ; 
 unsigned int SECP256K1_FLAGS_TYPE_CONTEXT ; 
 unsigned int SECP256K1_FLAGS_TYPE_MASK ; 
 int /*<<< orphan*/  default_illegal_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

size_t FUNC3(unsigned int flags) {
    size_t ret = FUNC1(sizeof(secp256k1_context));

    if (FUNC0((flags & SECP256K1_FLAGS_TYPE_MASK) != SECP256K1_FLAGS_TYPE_CONTEXT, 0)) {
            FUNC2(&default_illegal_callback,
                                    "Invalid flags");
            return 0;
    }

    if (flags & SECP256K1_FLAGS_BIT_CONTEXT_SIGN) {
        ret += SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE;
    }
    if (flags & SECP256K1_FLAGS_BIT_CONTEXT_VERIFY) {
        ret += SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE;
    }
    return ret;
}