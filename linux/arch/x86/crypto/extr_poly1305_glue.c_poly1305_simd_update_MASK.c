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
 int FUNC0 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 
 unsigned int FUNC7 (struct poly1305_desc_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct poly1305_desc_ctx* FUNC8 (struct shash_desc*) ; 
 scalar_t__ FUNC9 (unsigned int) ; 

__attribute__((used)) static int FUNC10(struct shash_desc *desc,
				const u8 *src, unsigned int srclen)
{
	struct poly1305_desc_ctx *dctx = FUNC8(desc);
	unsigned int bytes;

	/* kernel_fpu_begin/end is costly, use fallback for small updates */
	if (srclen <= 288 || !FUNC1())
		return FUNC0(desc, src, srclen);

	FUNC2();

	if (FUNC9(dctx->buflen)) {
		bytes = FUNC6(srclen, POLY1305_BLOCK_SIZE - dctx->buflen);
		FUNC5(dctx->buf + dctx->buflen, src, bytes);
		src += bytes;
		srclen -= bytes;
		dctx->buflen += bytes;

		if (dctx->buflen == POLY1305_BLOCK_SIZE) {
			FUNC7(dctx, dctx->buf,
					     POLY1305_BLOCK_SIZE);
			dctx->buflen = 0;
		}
	}

	if (FUNC4(srclen >= POLY1305_BLOCK_SIZE)) {
		bytes = FUNC7(dctx, src, srclen);
		src += srclen - bytes;
		srclen = bytes;
	}

	FUNC3();

	if (FUNC9(srclen)) {
		dctx->buflen = srclen;
		FUNC5(dctx->buf, src, srclen);
	}

	return 0;
}