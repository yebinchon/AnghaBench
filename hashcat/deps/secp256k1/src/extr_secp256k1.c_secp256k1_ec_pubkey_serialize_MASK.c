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
typedef  int /*<<< orphan*/  secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int SECP256K1_FLAGS_BIT_COMPRESSION ; 
 unsigned int SECP256K1_FLAGS_TYPE_COMPRESSION ; 
 unsigned int SECP256K1_FLAGS_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC5(const secp256k1_context* ctx, unsigned char *output, size_t *outputlen, const secp256k1_pubkey* pubkey, unsigned int flags) {
    secp256k1_ge Q;
    size_t len;
    int ret = 0;

    FUNC1(ctx != NULL);
    FUNC0(outputlen != NULL);
    FUNC0(*outputlen >= ((flags & SECP256K1_FLAGS_BIT_COMPRESSION) ? 33 : 65));
    len = *outputlen;
    *outputlen = 0;
    FUNC0(output != NULL);
    FUNC2(output, 0, len);
    FUNC0(pubkey != NULL);
    FUNC0((flags & SECP256K1_FLAGS_TYPE_MASK) == SECP256K1_FLAGS_TYPE_COMPRESSION);
    if (FUNC4(ctx, &Q, pubkey)) {
        ret = FUNC3(&Q, output, &len, flags & SECP256K1_FLAGS_BIT_COMPRESSION);
        if (ret) {
            *outputlen = len;
        }
    }
    return ret;
}