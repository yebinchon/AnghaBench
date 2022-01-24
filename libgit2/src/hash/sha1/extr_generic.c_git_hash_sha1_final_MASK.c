#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {scalar_t__ id; } ;
typedef  TYPE_1__ git_oid ;
struct TYPE_7__ {int size; int /*<<< orphan*/ * H; } ;
typedef  TYPE_2__ git_hash_sha1_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,...) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC3(git_oid *out, git_hash_sha1_ctx *ctx)
{
	static const unsigned char pad[64] = { 0x80 };
	unsigned int padlen[2];
	int i;

	/* Pad with a binary 1 (ie 0x80), then zeroes, then length */
	padlen[0] = FUNC1((uint32_t)(ctx->size >> 29));
	padlen[1] = FUNC1((uint32_t)(ctx->size << 3));

	i = ctx->size & 63;
	FUNC0(ctx, pad, 1+ (63 & (55 - i)));
	FUNC0(ctx, padlen, 8);

	/* Output hash */
	for (i = 0; i < 5; i++)
		FUNC2(out->id + i*4, ctx->H[i]);

	return 0;
}