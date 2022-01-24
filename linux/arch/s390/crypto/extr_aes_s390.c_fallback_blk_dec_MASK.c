#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  blk; } ;
struct s390_aes_ctx {TYPE_1__ fallback; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {int /*<<< orphan*/  info; int /*<<< orphan*/  flags; struct crypto_blkcipher* tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s390_aes_ctx* FUNC1 (struct crypto_blkcipher*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  req ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct blkcipher_desc *desc,
		struct scatterlist *dst, struct scatterlist *src,
		unsigned int nbytes)
{
	unsigned int ret;
	struct crypto_blkcipher *tfm = desc->tfm;
	struct s390_aes_ctx *sctx = FUNC1(tfm);
	FUNC0(req, sctx->fallback.blk);

	FUNC5(req, sctx->fallback.blk);
	FUNC3(req, desc->flags, NULL, NULL);
	FUNC4(req, src, dst, nbytes, desc->info);

	ret = FUNC2(req);

	FUNC6(req);
	return ret;
}