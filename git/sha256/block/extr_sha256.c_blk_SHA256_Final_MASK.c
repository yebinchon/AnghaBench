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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int size; int /*<<< orphan*/ * state; } ;
typedef  TYPE_1__ blk_SHA256_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,...) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 

void FUNC3(unsigned char *digest, blk_SHA256_CTX *ctx)
{
	static const unsigned char pad[64] = { 0x80 };
	unsigned int padlen[2];
	int i;

	/* Pad with a binary 1 (ie 0x80), then zeroes, then length */
	padlen[0] = FUNC1((uint32_t)(ctx->size >> 29));
	padlen[1] = FUNC1((uint32_t)(ctx->size << 3));

	i = ctx->size & 63;
	FUNC0(ctx, pad, 1 + (63 & (55 - i)));
	FUNC0(ctx, padlen, 8);

	/* copy output */
	for (i = 0; i < 8; i++, digest += sizeof(uint32_t))
		FUNC2(digest, ctx->state[i]);
}