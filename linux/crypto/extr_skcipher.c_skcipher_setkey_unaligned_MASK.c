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
struct skcipher_alg {int (* setkey ) (struct crypto_skcipher*,int /*<<< orphan*/ *,unsigned int) ;} ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct skcipher_alg* FUNC1 (struct crypto_skcipher*) ; 
 unsigned long FUNC2 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC6 (struct crypto_skcipher*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct crypto_skcipher *tfm,
				     const u8 *key, unsigned int keylen)
{
	unsigned long alignmask = FUNC2(tfm);
	struct skcipher_alg *cipher = FUNC1(tfm);
	u8 *buffer, *alignbuffer;
	unsigned long absize;
	int ret;

	absize = keylen + alignmask;
	buffer = FUNC3(absize, GFP_ATOMIC);
	if (!buffer)
		return -ENOMEM;

	alignbuffer = (u8 *)FUNC0((unsigned long)buffer, alignmask + 1);
	FUNC5(alignbuffer, key, keylen);
	ret = cipher->setkey(tfm, alignbuffer, keylen);
	FUNC4(buffer);
	return ret;
}