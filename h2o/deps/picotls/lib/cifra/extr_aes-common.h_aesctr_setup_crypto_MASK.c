#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  do_transform; int /*<<< orphan*/  do_init; int /*<<< orphan*/  do_dispose; } ;
struct aesctr_context_t {int /*<<< orphan*/  aes; TYPE_1__ super; } ;
typedef  int /*<<< orphan*/  ptls_cipher_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  aesctr_dispose ; 
 int /*<<< orphan*/  aesctr_init ; 
 int /*<<< orphan*/  aesctr_transform ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const*,size_t) ; 

__attribute__((used)) static inline int FUNC1(ptls_cipher_context_t *_ctx, int is_enc, const void *key, size_t key_size)
{
    struct aesctr_context_t *ctx = (struct aesctr_context_t *)_ctx;
    ctx->super.do_dispose = aesctr_dispose;
    ctx->super.do_init = aesctr_init;
    ctx->super.do_transform = aesctr_transform;
    FUNC0(&ctx->aes, key, key_size);
    return 0;
}