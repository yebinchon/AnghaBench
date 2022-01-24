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
typedef  int u8 ;
struct xcbc_tfm_ctx {int /*<<< orphan*/ * ctx; struct crypto_cipher* child; } ;
struct xcbc_desc_ctx {int len; int /*<<< orphan*/ * ctx; } ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_cipher*,int*,int*) ; 
 unsigned long FUNC2 (struct crypto_shash*) ; 
 int FUNC3 (struct crypto_shash*) ; 
 struct xcbc_tfm_ctx* FUNC4 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,unsigned int) ; 
 struct xcbc_desc_ctx* FUNC7 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC8(struct shash_desc *pdesc, u8 *out)
{
	struct crypto_shash *parent = pdesc->tfm;
	unsigned long alignmask = FUNC2(parent);
	struct xcbc_tfm_ctx *tctx = FUNC4(parent);
	struct xcbc_desc_ctx *ctx = FUNC7(pdesc);
	struct crypto_cipher *tfm = tctx->child;
	int bs = FUNC3(parent);
	u8 *consts = FUNC0(&tctx->ctx[0], alignmask + 1);
	u8 *odds = FUNC0(&ctx->ctx[0], alignmask + 1);
	u8 *prev = odds + bs;
	unsigned int offset = 0;

	if (ctx->len != bs) {
		unsigned int rlen;
		u8 *p = odds + ctx->len;

		*p = 0x80;
		p++;

		rlen = bs - ctx->len -1;
		if (rlen)
			FUNC6(p, 0, rlen);

		offset += bs;
	}

	FUNC5(prev, odds, bs);
	FUNC5(prev, consts + offset, bs);

	FUNC1(tfm, out, prev);

	return 0;
}