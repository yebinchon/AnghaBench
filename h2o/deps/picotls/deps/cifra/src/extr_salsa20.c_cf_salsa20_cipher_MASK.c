#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  nblock; int /*<<< orphan*/  block; } ;
typedef  TYPE_1__ cf_salsa20_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  cf_salsa20_next_block ; 

void FUNC1(cf_salsa20_ctx *ctx, const uint8_t *input, uint8_t *output, size_t bytes)
{
  FUNC0(ctx->block, &ctx->nblock, 64,
                   input, output, bytes,
                   cf_salsa20_next_block,
                   ctx);
}