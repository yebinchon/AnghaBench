#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct ghash_desc_ctx {int bytes; int /*<<< orphan*/ * buffer; } ;
struct ghash_ctx {int /*<<< orphan*/  gf128; } ;
typedef  int /*<<< orphan*/  be128 ;

/* Variables and functions */
 int GHASH_BLOCK_SIZE ; 
 struct ghash_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int,int) ; 
 struct ghash_desc_ctx* FUNC4 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC5(struct shash_desc *desc,
			 const u8 *src, unsigned int srclen)
{
	struct ghash_desc_ctx *dctx = FUNC4(desc);
	struct ghash_ctx *ctx = FUNC0(desc->tfm);
	u8 *dst = dctx->buffer;

	if (dctx->bytes) {
		int n = FUNC3(srclen, dctx->bytes);
		u8 *pos = dst + (GHASH_BLOCK_SIZE - dctx->bytes);

		dctx->bytes -= n;
		srclen -= n;

		while (n--)
			*pos++ ^= *src++;

		if (!dctx->bytes)
			FUNC2((be128 *)dst, ctx->gf128);
	}

	while (srclen >= GHASH_BLOCK_SIZE) {
		FUNC1(dst, src, GHASH_BLOCK_SIZE);
		FUNC2((be128 *)dst, ctx->gf128);
		src += GHASH_BLOCK_SIZE;
		srclen -= GHASH_BLOCK_SIZE;
	}

	if (srclen) {
		dctx->bytes = GHASH_BLOCK_SIZE - srclen;
		while (srclen--)
			*dst++ ^= *src++;
	}

	return 0;
}