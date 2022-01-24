#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_x25519_key_exchange_t {int /*<<< orphan*/  priv; int /*<<< orphan*/  pub; } ;
typedef  int /*<<< orphan*/  ptls_key_exchange_context_t ;
struct TYPE_5__ {scalar_t__ len; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ ptls_iovec_t ;

/* Variables and functions */
 int PTLS_ALERT_DECRYPT_ERROR ; 
 scalar_t__ X25519_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct st_x25519_key_exchange_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(ptls_key_exchange_context_t **_ctx, int release, ptls_iovec_t *secret, ptls_iovec_t peerkey)
{
    struct st_x25519_key_exchange_t *ctx = (struct st_x25519_key_exchange_t *)*_ctx;
    int ret;

    if (secret == NULL) {
        ret = 0;
        goto Exit;
    }

    if (peerkey.len != X25519_KEY_SIZE) {
        ret = PTLS_ALERT_DECRYPT_ERROR;
        goto Exit;
    }
    ret = FUNC2(secret, ctx->priv, ctx->pub, NULL, peerkey.base);

Exit:
    if (release) {
        FUNC1(ctx->priv, sizeof(ctx->priv));
        FUNC0(ctx);
        *_ctx = NULL;
    }
    return ret;
}