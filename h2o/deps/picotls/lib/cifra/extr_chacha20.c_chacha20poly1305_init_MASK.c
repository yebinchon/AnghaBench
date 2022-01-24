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
typedef  int /*<<< orphan*/  tmpbuf ;
struct chacha20poly1305_context_t {size_t aadlen; scalar_t__ textlen; int /*<<< orphan*/  poly; int /*<<< orphan*/  chacha; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  ptls_aead_context_t ;

/* Variables and functions */
 int PTLS_CHACHA20POLY1305_IV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  zeros64 ; 

__attribute__((used)) static void FUNC8(ptls_aead_context_t *_ctx, const void *iv, const void *aad, size_t aadlen)
{
    struct chacha20poly1305_context_t *ctx = (struct chacha20poly1305_context_t *)_ctx;
    uint8_t tmpbuf[64];

    /* init chacha */
    FUNC6(tmpbuf, 0, 16 - PTLS_CHACHA20POLY1305_IV_SIZE);
    FUNC5(tmpbuf + 16 - PTLS_CHACHA20POLY1305_IV_SIZE, iv, PTLS_CHACHA20POLY1305_IV_SIZE);
    FUNC1(&ctx->chacha, ctx->key, sizeof(ctx->key), tmpbuf, 4);

    /* init poly1305 (by using first 16 bytes of the key stream of the first block) */
    FUNC0(&ctx->chacha, zeros64, tmpbuf, 64);
    FUNC2(&ctx->poly, tmpbuf, tmpbuf + 16);

    FUNC7(tmpbuf, sizeof(tmpbuf));

    /* aad */
    if (aadlen != 0) {
        FUNC3(&ctx->poly, aad, aadlen);
        FUNC4(&ctx->poly, aadlen);
    }

    ctx->aadlen = aadlen;
    ctx->textlen = 0;
}