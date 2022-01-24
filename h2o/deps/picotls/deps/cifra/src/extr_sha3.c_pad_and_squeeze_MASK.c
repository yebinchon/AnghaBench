#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {scalar_t__ rate; scalar_t__ npartial; } ;
typedef  TYPE_1__ cf_sha3_context ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_HASH_PAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC4(cf_sha3_context *ctx, uint8_t *out, size_t nout)
{
  FUNC2(ctx, DOMAIN_HASH_PAD, ctx->rate - ctx->npartial);
  FUNC0(ctx->npartial == 0);

  FUNC3(ctx, out, nout);
  FUNC1(ctx, sizeof *ctx);
}