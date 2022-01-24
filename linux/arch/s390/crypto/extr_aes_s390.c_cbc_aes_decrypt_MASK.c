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
struct scatterlist {int dummy; } ;
struct s390_aes_ctx {int /*<<< orphan*/  fc; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPACF_DECRYPT ; 
 int /*<<< orphan*/  FUNC0 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC1 (struct blkcipher_desc*,int /*<<< orphan*/ ,struct blkcipher_walk*) ; 
 struct s390_aes_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct blkcipher_desc *desc,
			   struct scatterlist *dst, struct scatterlist *src,
			   unsigned int nbytes)
{
	struct s390_aes_ctx *sctx = FUNC2(desc->tfm);
	struct blkcipher_walk walk;

	if (FUNC4(!sctx->fc))
		return FUNC3(desc, dst, src, nbytes);

	FUNC0(&walk, dst, src, nbytes);
	return FUNC1(desc, CPACF_DECRYPT, &walk);
}