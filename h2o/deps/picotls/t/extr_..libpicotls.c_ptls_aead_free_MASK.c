#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* algo; int /*<<< orphan*/  static_iv; int /*<<< orphan*/  (* dispose_crypto ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ ptls_aead_context_t ;
struct TYPE_6__ {int /*<<< orphan*/  iv_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(ptls_aead_context_t *ctx)
{
    ctx->dispose_crypto(ctx);
    FUNC1(ctx->static_iv, ctx->algo->iv_size);
    FUNC0(ctx);
}