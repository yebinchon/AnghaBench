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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct cipher_alg {int (* cia_setkey ) (struct crypto_tfm*,int /*<<< orphan*/ *,unsigned int) ;} ;
struct TYPE_2__ {struct cipher_alg cra_cipher; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (struct crypto_tfm*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *tfm, const u8 *key,
			    unsigned int keylen)
{
	struct cipher_alg *cia = &tfm->__crt_alg->cra_cipher;
	unsigned long alignmask = FUNC1(tfm);
	int ret;
	u8 *buffer, *alignbuffer;
	unsigned long absize;

	absize = keylen + alignmask;
	buffer = FUNC3(absize, GFP_ATOMIC);
	if (!buffer)
		return -ENOMEM;

	alignbuffer = (u8 *)FUNC0((unsigned long)buffer, alignmask + 1);
	FUNC4(alignbuffer, key, keylen);
	ret = cia->cia_setkey(tfm, alignbuffer, keylen);
	FUNC5(alignbuffer, 0, keylen);
	FUNC2(buffer);
	return ret;

}