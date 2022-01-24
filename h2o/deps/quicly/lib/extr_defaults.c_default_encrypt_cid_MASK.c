#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct st_quicly_default_encrypt_cid_t {TYPE_4__* cid_encrypt_ctx; } ;
struct TYPE_8__ {int len; int /*<<< orphan*/  cid; } ;
typedef  TYPE_2__ quicly_cid_t ;
struct TYPE_9__ {int master_id; int thread_id; int path_id; int /*<<< orphan*/  node_id; } ;
typedef  TYPE_3__ quicly_cid_plaintext_t ;
typedef  int /*<<< orphan*/  quicly_cid_encryptor_t ;
struct TYPE_10__ {TYPE_1__* algo; } ;
struct TYPE_7__ {int block_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_quicly_default_encrypt_cid_t*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(quicly_cid_encryptor_t *_self, quicly_cid_t *encrypted, void *reset_token,
                                const quicly_cid_plaintext_t *plaintext)
{
    struct st_quicly_default_encrypt_cid_t *self = (void *)_self;
    uint8_t buf[16], *p;

    /* encode */
    p = buf;
    switch (self->cid_encrypt_ctx->algo->block_size) {
    case 8:
        break;
    case 16:
        p = FUNC4(p, plaintext->node_id);
        break;
    default:
        FUNC0(!"unexpected block size");
        break;
    }
    p = FUNC3(p, plaintext->master_id);
    p = FUNC3(p, (plaintext->thread_id << 8) | plaintext->path_id);
    FUNC0(p - buf == self->cid_encrypt_ctx->algo->block_size);

    /* generate CID */
    FUNC2(self->cid_encrypt_ctx, encrypted->cid, buf, self->cid_encrypt_ctx->algo->block_size);
    encrypted->len = self->cid_encrypt_ctx->algo->block_size;

    /* generate stateless reset token if requested */
    if (reset_token != NULL)
        FUNC1(self, reset_token, encrypted->cid);
}