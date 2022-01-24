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
struct TYPE_4__ {size_t ncounter; scalar_t__ nblock; int /*<<< orphan*/  nonce; } ;
typedef  TYPE_1__ cf_chacha20_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,size_t) ; 

void FUNC3(cf_chacha20_ctx *ctx, const uint8_t *key, size_t nkey,
                             const uint8_t nonce[16], size_t ncounter)
{
  FUNC0(ncounter > 0);
  FUNC2(ctx, key, nkey);
  FUNC1(ctx->nonce, nonce, sizeof ctx->nonce);
  ctx->nblock = 0;
  ctx->ncounter = ncounter;
}