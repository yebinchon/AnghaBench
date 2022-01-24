#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_1__ ptls_t ;
typedef  int /*<<< orphan*/  ptls_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

void FUNC1(ptls_t *tls, ptls_context_t *ctx)
{
    FUNC0(ctx, 1);
    FUNC0(tls->ctx, -1);
    tls->ctx = ctx;
}