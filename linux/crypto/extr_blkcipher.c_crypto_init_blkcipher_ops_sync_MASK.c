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
struct blkcipher_tfm {void* iv; int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  setkey; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; struct blkcipher_tfm crt_blkcipher; } ;
struct blkcipher_alg {int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; } ;
struct TYPE_2__ {unsigned long cra_ctxsize; struct blkcipher_alg cra_blkcipher; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (struct crypto_tfm*) ; 
 scalar_t__ FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  setkey ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm)
{
	struct blkcipher_tfm *crt = &tfm->crt_blkcipher;
	struct blkcipher_alg *alg = &tfm->__crt_alg->cra_blkcipher;
	unsigned long align = FUNC1(tfm) + 1;
	unsigned long addr;

	crt->setkey = setkey;
	crt->encrypt = alg->encrypt;
	crt->decrypt = alg->decrypt;

	addr = (unsigned long)FUNC2(tfm);
	addr = FUNC0(addr, align);
	addr += FUNC0(tfm->__crt_alg->cra_ctxsize, align);
	crt->iv = (void *)addr;

	return 0;
}