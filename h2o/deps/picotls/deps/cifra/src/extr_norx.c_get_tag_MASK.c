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
struct TYPE_5__ {int /*<<< orphan*/ * s; } ;
typedef  TYPE_1__ norx32_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_TAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(norx32_ctx *ctx, uint8_t tag[16])
{
  FUNC1(ctx, DOMAIN_TAG);
  FUNC0(ctx);
  FUNC2(ctx->s[0], tag + 0);
  FUNC2(ctx->s[1], tag + 4);
  FUNC2(ctx->s[2], tag + 8);
  FUNC2(ctx->s[3], tag + 12);
}