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
struct lz4hc_ctx {int /*<<< orphan*/  lz4hc_comp_mem; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ) ; 
 struct lz4hc_ctx* FUNC1 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC2(struct crypto_tfm *tfm, const u8 *src,
				 unsigned int slen, u8 *dst,
				 unsigned int *dlen)
{
	struct lz4hc_ctx *ctx = FUNC1(tfm);

	return FUNC0(src, slen, dst, dlen,
					ctx->lz4hc_comp_mem);
}