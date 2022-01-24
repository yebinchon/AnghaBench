#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  (* hash_final ) (TYPE_2__*,void*) ;int /*<<< orphan*/  (* hash_reset ) (TYPE_2__*) ;} ;
struct TYPE_10__ {TYPE_1__ _hmac; int /*<<< orphan*/  digest_length; } ;
typedef  TYPE_2__ picohash_ctx_t ;

/* Variables and functions */
 int PICOHASH_MAX_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,void*) ; 

__attribute__((used)) static void FUNC6(picohash_ctx_t *ctx, void *digest)
{
    unsigned char inner_digest[PICOHASH_MAX_DIGEST_LENGTH];

    ctx->_hmac.hash_final(ctx, inner_digest);

    ctx->_hmac.hash_reset(ctx);
    FUNC0(ctx, 0x5c);
    FUNC2(ctx, inner_digest, ctx->digest_length);
    FUNC1(inner_digest, 0, ctx->digest_length);

    ctx->_hmac.hash_final(ctx, digest);
}