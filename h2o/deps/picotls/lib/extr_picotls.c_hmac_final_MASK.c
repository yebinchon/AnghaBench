#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_picotls_hmac_context_t {TYPE_1__* algo; int /*<<< orphan*/  key; TYPE_2__* hash; } ;
typedef  int ptls_hash_final_mode_t ;
typedef  int /*<<< orphan*/  ptls_hash_context_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* final ) (TYPE_2__*,void*,int) ;int /*<<< orphan*/  (* update ) (TYPE_2__*,void*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  block_size; int /*<<< orphan*/  digest_size; } ;

/* Variables and functions */
#define  PTLS_HASH_FINAL_MODE_FREE 129 
#define  PTLS_HASH_FINAL_MODE_RESET 128 
 int PTLS_HASH_FINAL_MODE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_picotls_hmac_context_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_picotls_hmac_context_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,void*,int) ; 

__attribute__((used)) static void FUNC7(ptls_hash_context_t *_ctx, void *md, ptls_hash_final_mode_t mode)
{
    struct st_picotls_hmac_context_t *ctx = (struct st_picotls_hmac_context_t *)_ctx;

    FUNC0(mode != PTLS_HASH_FINAL_MODE_SNAPSHOT || !"not supported");

    if (md != NULL) {
        ctx->hash->final(ctx->hash, md, PTLS_HASH_FINAL_MODE_RESET);
        FUNC2(ctx, 0x5c);
        ctx->hash->update(ctx->hash, md, ctx->algo->digest_size);
    }
    ctx->hash->final(ctx->hash, md, mode);

    switch (mode) {
    case PTLS_HASH_FINAL_MODE_FREE:
        FUNC3(ctx->key, ctx->algo->block_size);
        FUNC1(ctx);
        break;
    case PTLS_HASH_FINAL_MODE_RESET:
        FUNC2(ctx, 0x36);
        break;
    default:
        FUNC0(!"FIXME");
        break;
    }
}