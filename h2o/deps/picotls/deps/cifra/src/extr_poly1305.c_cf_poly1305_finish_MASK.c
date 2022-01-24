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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/ * h; scalar_t__* s; scalar_t__ npartial; } ;
typedef  TYPE_1__ cf_poly1305 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(cf_poly1305 *ctx,
                        uint8_t out[16])
{
  if (ctx->npartial)
    FUNC3(ctx);

  uint32_t s[17];
  size_t i;
  for (i = 0; i < 16; i++)
    s[i] = ctx->s[i];
  s[16] = 0;

  FUNC2(ctx->h);
  FUNC1(ctx->h, s);

  for (i = 0; i < 16; i++)
    out[i] = ctx->h[i];

  FUNC0(ctx, sizeof *ctx);
}