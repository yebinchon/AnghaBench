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
struct TYPE_4__ {void** H; } ;
typedef  TYPE_1__ cf_sha512_context ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC2(cf_sha512_context *ctx)
{
  FUNC1(ctx, 0, sizeof *ctx);
  ctx->H[0] = FUNC0(0x6a09e667f3bcc908);
  ctx->H[1] = FUNC0(0xbb67ae8584caa73b);
  ctx->H[2] = FUNC0(0x3c6ef372fe94f82b);
  ctx->H[3] = FUNC0(0xa54ff53a5f1d36f1);
  ctx->H[4] = FUNC0(0x510e527fade682d1);
  ctx->H[5] = FUNC0(0x9b05688c2b3e6c1f);
  ctx->H[6] = FUNC0(0x1f83d9abfb41bd6b);
  ctx->H[7] = FUNC0(0x5be0cd19137e2179);
}