#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  block; int /*<<< orphan*/  prpctx; TYPE_1__* prp; } ;
typedef  TYPE_2__ cf_cbc ;
struct TYPE_4__ {size_t blocksz; int /*<<< orphan*/  (* decrypt ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int CF_MAXBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

void FUNC3(cf_cbc *ctx, const uint8_t *input, uint8_t *output, size_t blocks)
{
  uint8_t buf[CF_MAXBLOCK];
  size_t nblk = ctx->prp->blocksz;

  while (blocks--)
  {
    ctx->prp->decrypt(ctx->prpctx, input, buf);
    FUNC2(output, buf, ctx->block, nblk);
    FUNC0(ctx->block, input, nblk);
    input += nblk;
    output += nblk;
  }
}