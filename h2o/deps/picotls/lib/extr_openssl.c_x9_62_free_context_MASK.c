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
struct TYPE_3__ {struct st_x9_62_keyex_context_t* base; } ;
struct TYPE_4__ {TYPE_1__ pubkey; } ;
struct st_x9_62_keyex_context_t {int /*<<< orphan*/ * bn_ctx; int /*<<< orphan*/ * privkey; TYPE_2__ super; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct st_x9_62_keyex_context_t*) ; 

__attribute__((used)) static void FUNC3(struct st_x9_62_keyex_context_t *ctx)
{
    FUNC2(ctx->super.pubkey.base);
    if (ctx->privkey != NULL)
        FUNC1(ctx->privkey);
    if (ctx->bn_ctx != NULL)
        FUNC0(ctx->bn_ctx);
    FUNC2(ctx);
}