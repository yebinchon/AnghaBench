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
typedef  int u64 ;
struct shash_desc {int dummy; } ;
struct poly1305_desc_ctx {int buflen; int* buf; int* s; int /*<<< orphan*/  h; int /*<<< orphan*/  sset; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOKEY ; 
 scalar_t__ POLY1305_BLOCK_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct poly1305_desc_ctx*,int*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 struct poly1305_desc_ctx* FUNC5 (struct shash_desc*) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct shash_desc *desc, u8 *dst)
{
	struct poly1305_desc_ctx *dctx = FUNC5(desc);
	__le32 digest[4];
	u64 f = 0;

	if (FUNC6(!dctx->sset))
		return -ENOKEY;

	if (FUNC6(dctx->buflen)) {
		dctx->buf[dctx->buflen++] = 1;
		FUNC1(dctx->buf + dctx->buflen, 0,
		       POLY1305_BLOCK_SIZE - dctx->buflen);
		FUNC2(dctx, dctx->buf, POLY1305_BLOCK_SIZE, 0);
	}

	FUNC3(&dctx->h, digest);

	/* mac = (h + s) % (2^128) */
	f = (f >> 32) + FUNC0(digest[0]) + dctx->s[0];
	FUNC4(f, dst + 0);
	f = (f >> 32) + FUNC0(digest[1]) + dctx->s[1];
	FUNC4(f, dst + 4);
	f = (f >> 32) + FUNC0(digest[2]) + dctx->s[2];
	FUNC4(f, dst + 8);
	f = (f >> 32) + FUNC0(digest[3]) + dctx->s[3];
	FUNC4(f, dst + 12);

	return 0;
}