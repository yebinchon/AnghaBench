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
struct ghash_ctx {int /*<<< orphan*/  shash; } ;

/* Variables and functions */
 int GHASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 struct ghash_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (unsigned int,int) ; 
 struct ghash_desc_ctx* FUNC6 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC7(struct shash_desc *desc,
			 const u8 *src, unsigned int srclen)
{
	struct ghash_desc_ctx *dctx = FUNC6(desc);
	struct ghash_ctx *ctx = FUNC2(desc->tfm);
	u8 *dst = dctx->buffer;

	FUNC3();
	if (dctx->bytes) {
		int n = FUNC5(srclen, dctx->bytes);
		u8 *pos = dst + (GHASH_BLOCK_SIZE - dctx->bytes);

		dctx->bytes -= n;
		srclen -= n;

		while (n--)
			*pos++ ^= *src++;

		if (!dctx->bytes)
			FUNC0(dst, &ctx->shash);
	}

	FUNC1(dst, src, srclen, &ctx->shash);
	FUNC4();

	if (srclen & 0xf) {
		src += srclen - (srclen & 0xf);
		srclen &= 0xf;
		dctx->bytes = GHASH_BLOCK_SIZE - srclen;
		while (srclen--)
			*dst++ ^= *src++;
	}

	return 0;
}