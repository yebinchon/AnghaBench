#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {TYPE_1__* algo; } ;
struct aead_crypto_context_t {int /*<<< orphan*/  evp_ctx; TYPE_2__ super; } ;
typedef  int /*<<< orphan*/  ptls_aead_context_t ;
struct TYPE_3__ {size_t tag_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  EVP_CTRL_GCM_SET_TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,void const*,int) ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static size_t FUNC5(ptls_aead_context_t *_ctx, void *_output, const void *input, size_t inlen, const void *iv,
                              const void *aad, size_t aadlen)
{
    struct aead_crypto_context_t *ctx = (struct aead_crypto_context_t *)_ctx;
    uint8_t *output = _output;
    size_t off = 0, tag_size = ctx->super.algo->tag_size;
    int blocklen, ret;

    if (inlen < tag_size)
        return SIZE_MAX;

    ret = FUNC2(ctx->evp_ctx, NULL, NULL, NULL, iv);
    FUNC4(ret);
    if (aadlen != 0) {
        ret = FUNC3(ctx->evp_ctx, NULL, &blocklen, aad, (int)aadlen);
        FUNC4(ret);
    }
    ret = FUNC3(ctx->evp_ctx, output + off, &blocklen, input, (int)(inlen - tag_size));
    FUNC4(ret);
    off += blocklen;
    if (!FUNC0(ctx->evp_ctx, EVP_CTRL_GCM_SET_TAG, (int)tag_size, (void *)((uint8_t *)input + inlen - tag_size)))
        return SIZE_MAX;
    if (!FUNC1(ctx->evp_ctx, output + off, &blocklen))
        return SIZE_MAX;
    off += blocklen;

    return off;
}