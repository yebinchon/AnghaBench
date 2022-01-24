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
struct ghash_key {int dummy; } ;
struct ghash_desc_ctx {unsigned int count; int /*<<< orphan*/ * buf; int /*<<< orphan*/  digest; } ;

/* Variables and functions */
 unsigned int GHASH_BLOCK_SIZE ; 
 struct ghash_key* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,struct ghash_key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 struct ghash_desc_ctx* FUNC3 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC4(struct shash_desc *desc, const u8 *src,
			unsigned int len)
{
	struct ghash_desc_ctx *ctx = FUNC3(desc);
	unsigned int partial = ctx->count % GHASH_BLOCK_SIZE;

	ctx->count += len;

	if ((partial + len) >= GHASH_BLOCK_SIZE) {
		struct ghash_key *key = FUNC0(desc->tfm);
		int blocks;

		if (partial) {
			int p = GHASH_BLOCK_SIZE - partial;

			FUNC2(ctx->buf + partial, src, p);
			src += p;
			len -= p;
		}

		blocks = len / GHASH_BLOCK_SIZE;
		len %= GHASH_BLOCK_SIZE;

		FUNC1(blocks, ctx->digest, src, key,
				partial ? ctx->buf : NULL);
		src += blocks * GHASH_BLOCK_SIZE;
		partial = 0;
	}
	if (len)
		FUNC2(ctx->buf + partial, src, len);
	return 0;
}