#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cf_prp ;
struct TYPE_5__ {void* prpctx; int /*<<< orphan*/  const* prp; } ;
typedef  TYPE_1__ cf_cbcmac_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC2(cf_cbcmac_stream *ctx, const cf_prp *prp, void *prpctx)
{
  FUNC1(ctx, 0, sizeof *ctx);
  ctx->prp = prp;
  ctx->prpctx = prpctx;
  FUNC0(ctx);
}