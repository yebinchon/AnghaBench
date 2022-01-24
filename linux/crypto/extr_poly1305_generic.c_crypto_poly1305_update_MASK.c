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
struct shash_desc {int dummy; } ;
struct poly1305_desc_ctx {unsigned int buflen; int /*<<< orphan*/  const* buf; } ;

/* Variables and functions */
 unsigned int POLY1305_BLOCK_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct poly1305_desc_ctx*,int /*<<< orphan*/  const*,unsigned int,int) ; 
 struct poly1305_desc_ctx* FUNC4 (struct shash_desc*) ; 
 scalar_t__ FUNC5 (unsigned int) ; 

int FUNC6(struct shash_desc *desc,
			   const u8 *src, unsigned int srclen)
{
	struct poly1305_desc_ctx *dctx = FUNC4(desc);
	unsigned int bytes;

	if (FUNC5(dctx->buflen)) {
		bytes = FUNC2(srclen, POLY1305_BLOCK_SIZE - dctx->buflen);
		FUNC1(dctx->buf + dctx->buflen, src, bytes);
		src += bytes;
		srclen -= bytes;
		dctx->buflen += bytes;

		if (dctx->buflen == POLY1305_BLOCK_SIZE) {
			FUNC3(dctx, dctx->buf,
					POLY1305_BLOCK_SIZE, 1 << 24);
			dctx->buflen = 0;
		}
	}

	if (FUNC0(srclen >= POLY1305_BLOCK_SIZE)) {
		FUNC3(dctx, src, srclen, 1 << 24);
		src += srclen - (srclen % POLY1305_BLOCK_SIZE);
		srclen %= POLY1305_BLOCK_SIZE;
	}

	if (FUNC5(srclen)) {
		dctx->buflen = srclen;
		FUNC1(dctx->buf, src, srclen);
	}

	return 0;
}