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
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int (* setkey ) (struct crypto_aead*,int /*<<< orphan*/ *,unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_1__* FUNC1 (struct crypto_aead*) ; 
 unsigned long FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (struct crypto_aead*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct crypto_aead *tfm, const u8 *key,
			    unsigned int keylen)
{
	unsigned long alignmask = FUNC2(tfm);
	int ret;
	u8 *buffer, *alignbuffer;
	unsigned long absize;

	absize = keylen + alignmask;
	buffer = FUNC4(absize, GFP_ATOMIC);
	if (!buffer)
		return -ENOMEM;

	alignbuffer = (u8 *)FUNC0((unsigned long)buffer, alignmask + 1);
	FUNC5(alignbuffer, key, keylen);
	ret = FUNC1(tfm)->setkey(tfm, alignbuffer, keylen);
	FUNC6(alignbuffer, 0, keylen);
	FUNC3(buffer);
	return ret;
}