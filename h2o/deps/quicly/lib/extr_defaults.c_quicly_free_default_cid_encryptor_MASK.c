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
struct st_quicly_default_encrypt_cid_t {int /*<<< orphan*/  reset_token_ctx; int /*<<< orphan*/  cid_decrypt_ctx; int /*<<< orphan*/  cid_encrypt_ctx; } ;
typedef  int /*<<< orphan*/  quicly_cid_encryptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_quicly_default_encrypt_cid_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(quicly_cid_encryptor_t *_self)
{
    struct st_quicly_default_encrypt_cid_t *self = (void *)_self;

    FUNC1(self->cid_encrypt_ctx);
    FUNC1(self->cid_decrypt_ctx);
    FUNC1(self->reset_token_ctx);
    FUNC0(self);
}