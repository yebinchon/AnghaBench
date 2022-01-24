#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * base; } ;
struct TYPE_3__ {TYPE_2__ pubkey; } ;
struct st_x9_62_keyex_context_t {int /*<<< orphan*/  bn_ctx; TYPE_1__ super; int /*<<< orphan*/  privkey; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int PTLS_ERROR_NO_MEMORY ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct st_x9_62_keyex_context_t *ctx)
{
    const EC_GROUP *group = FUNC0(ctx->privkey);
    const EC_POINT *pubkey = FUNC1(ctx->privkey);
    if ((ctx->super.pubkey = FUNC2(group, pubkey, ctx->bn_ctx)).base == NULL)
        return PTLS_ERROR_NO_MEMORY;
    return 0;
}