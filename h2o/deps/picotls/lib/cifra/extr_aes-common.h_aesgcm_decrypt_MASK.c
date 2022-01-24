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
typedef  int /*<<< orphan*/  uint8_t ;
struct aesgcm_context_t {int /*<<< orphan*/  aes; } ;
typedef  int /*<<< orphan*/  ptls_aead_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTLS_AESGCM_IV_SIZE ; 
 size_t PTLS_AESGCM_TAG_SIZE ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  cf_aes ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*,size_t,void const*,size_t,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,void*) ; 

__attribute__((used)) static inline size_t FUNC1(ptls_aead_context_t *_ctx, void *output, const void *input, size_t inlen, const void *iv,
                             const void *aad, size_t aadlen)
{
    struct aesgcm_context_t *ctx = (struct aesgcm_context_t *)_ctx;

    if (inlen < PTLS_AESGCM_TAG_SIZE)
        return SIZE_MAX;
    size_t tag_offset = inlen - PTLS_AESGCM_TAG_SIZE;

    if (FUNC0(&cf_aes, &ctx->aes, input, tag_offset, aad, aadlen, iv, PTLS_AESGCM_IV_SIZE, (uint8_t *)input + tag_offset,
                       PTLS_AESGCM_TAG_SIZE, output) != 0)
        return SIZE_MAX;

    return tag_offset;
}