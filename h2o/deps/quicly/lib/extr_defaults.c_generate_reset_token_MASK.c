#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct st_quicly_default_encrypt_cid_t {TYPE_4__* reset_token_ctx; TYPE_1__* cid_encrypt_ctx; } ;
typedef  int /*<<< orphan*/  expandbuf ;
struct TYPE_8__ {TYPE_2__* algo; } ;
struct TYPE_7__ {int block_size; } ;
struct TYPE_6__ {int block_size; } ;
struct TYPE_5__ {TYPE_3__* algo; } ;

/* Variables and functions */
 int QUICLY_STATELESS_RESET_TOKEN_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,void*,void const*,int) ; 

__attribute__((used)) static void FUNC4(struct st_quicly_default_encrypt_cid_t *self, void *token, const void *cid)
{
    uint8_t expandbuf[QUICLY_STATELESS_RESET_TOKEN_LEN];

    FUNC0(self->reset_token_ctx->algo->block_size == QUICLY_STATELESS_RESET_TOKEN_LEN);

    /* expand the input to full size, if CID is shorter than the size of the reset token */
    if (self->cid_encrypt_ctx->algo->block_size != QUICLY_STATELESS_RESET_TOKEN_LEN) {
        FUNC0(self->cid_encrypt_ctx->algo->block_size < QUICLY_STATELESS_RESET_TOKEN_LEN);
        FUNC2(expandbuf, 0, sizeof(expandbuf));
        FUNC1(expandbuf, cid, self->cid_encrypt_ctx->algo->block_size);
        cid = expandbuf;
    }

    /* transform */
    FUNC3(self->reset_token_ctx, token, cid, QUICLY_STATELESS_RESET_TOKEN_LEN);
}