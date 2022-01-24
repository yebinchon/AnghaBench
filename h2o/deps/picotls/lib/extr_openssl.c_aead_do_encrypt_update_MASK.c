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
struct aead_crypto_context_t {int /*<<< orphan*/  evp_ctx; } ;
typedef  int /*<<< orphan*/  ptls_aead_context_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,int*,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static size_t FUNC2(ptls_aead_context_t *_ctx, void *output, const void *input, size_t inlen)
{
    struct aead_crypto_context_t *ctx = (struct aead_crypto_context_t *)_ctx;
    int blocklen, ret;

    ret = FUNC0(ctx->evp_ctx, output, &blocklen, input, (int)inlen);
    FUNC1(ret);

    return blocklen;
}