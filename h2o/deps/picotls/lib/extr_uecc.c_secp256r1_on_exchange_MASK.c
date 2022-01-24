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
struct st_secp256r1_key_exhchange_t {int /*<<< orphan*/  priv; } ;
typedef  struct st_secp256r1_key_exhchange_t uint8_t ;
typedef  int /*<<< orphan*/  ptls_key_exchange_context_t ;
struct TYPE_5__ {scalar_t__ len; scalar_t__* base; } ;
typedef  TYPE_1__ ptls_iovec_t ;

/* Variables and functions */
 int PTLS_ALERT_DECRYPT_ERROR ; 
 int PTLS_ERROR_NO_MEMORY ; 
 scalar_t__ SECP256R1_PUBLIC_KEY_SIZE ; 
 int /*<<< orphan*/  SECP256R1_SHARED_SECRET_SIZE ; 
 scalar_t__ TYPE_UNCOMPRESSED_PUBLIC_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct st_secp256r1_key_exhchange_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC3 (struct st_secp256r1_key_exhchange_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,struct st_secp256r1_key_exhchange_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(ptls_key_exchange_context_t **_ctx, int release, ptls_iovec_t *secret, ptls_iovec_t peerkey)
{
    struct st_secp256r1_key_exhchange_t *ctx = (struct st_secp256r1_key_exhchange_t *)*_ctx;
    uint8_t *secbytes = NULL;
    int ret;

    if (secret == NULL) {
        ret = 0;
        goto Exit;
    }

    if (peerkey.len != SECP256R1_PUBLIC_KEY_SIZE || peerkey.base[0] != TYPE_UNCOMPRESSED_PUBLIC_KEY) {
        ret = PTLS_ALERT_DECRYPT_ERROR;
        goto Exit;
    }
    if ((secbytes = (uint8_t *)FUNC1(SECP256R1_SHARED_SECRET_SIZE)) == NULL) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Exit;
    }
    if (!FUNC5(peerkey.base + 1, ctx->priv, secbytes, FUNC4())) {
        ret = PTLS_ALERT_DECRYPT_ERROR;
        goto Exit;
    }
    *secret = FUNC3(secbytes, SECP256R1_SHARED_SECRET_SIZE);
    ret = 0;

Exit:
    if (ret != 0)
        FUNC0(secbytes);
    if (release) {
        FUNC2(ctx->priv, sizeof(ctx->priv));
        FUNC0(ctx);
        *_ctx = NULL;
    }
    return ret;
}