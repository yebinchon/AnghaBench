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
struct chacha20poly1305_context_t {int /*<<< orphan*/  chacha; } ;
typedef  int /*<<< orphan*/  ptls_aead_context_t ;

/* Variables and functions */
 size_t PTLS_CHACHA20POLY1305_TAG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct chacha20poly1305_context_t*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static size_t FUNC2(ptls_aead_context_t *_ctx, void *output)
{
    struct chacha20poly1305_context_t *ctx = (struct chacha20poly1305_context_t *)_ctx;

    FUNC0(ctx, output);

    FUNC1(&ctx->chacha, sizeof(ctx->chacha));
    return PTLS_CHACHA20POLY1305_TAG_SIZE;
}