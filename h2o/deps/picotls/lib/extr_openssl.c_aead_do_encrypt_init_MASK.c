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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(ptls_aead_context_t *_ctx, const void *iv, const void *aad, size_t aadlen)
{
    struct aead_crypto_context_t *ctx = (struct aead_crypto_context_t *)_ctx;
    int ret;

    /* FIXME for performance, preserve the expanded key instead of the raw key */
    ret = FUNC0(ctx->evp_ctx, NULL, NULL, NULL, iv);
    FUNC2(ret);

    if (aadlen != 0) {
        int blocklen;
        ret = FUNC1(ctx->evp_ctx, NULL, &blocklen, aad, (int)aadlen);
        FUNC2(ret);
    }
}