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
struct mac_tfm_ctx {int /*<<< orphan*/  key; } ;
struct mac_desc_ctx {unsigned int len; scalar_t__ dg; } ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 struct mac_tfm_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,scalar_t__,int,int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 struct mac_desc_ctx* FUNC4 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC5(struct shash_desc *desc, const u8 *p, unsigned int len)
{
	struct mac_tfm_ctx *tctx = FUNC0(desc->tfm);
	struct mac_desc_ctx *ctx = FUNC4(desc);

	while (len > 0) {
		unsigned int l;

		if ((ctx->len % AES_BLOCK_SIZE) == 0 &&
		    (ctx->len + len) > AES_BLOCK_SIZE) {

			int blocks = len / AES_BLOCK_SIZE;

			len %= AES_BLOCK_SIZE;

			FUNC2(&tctx->key, p, blocks, ctx->dg,
				      (ctx->len != 0), (len != 0));

			p += blocks * AES_BLOCK_SIZE;

			if (!len) {
				ctx->len = AES_BLOCK_SIZE;
				break;
			}
			ctx->len = 0;
		}

		l = FUNC3(len, AES_BLOCK_SIZE - ctx->len);

		if (l <= AES_BLOCK_SIZE) {
			FUNC1(ctx->dg + ctx->len, p, l);
			ctx->len += l;
			len -= l;
			p += l;
		}
	}

	return 0;
}