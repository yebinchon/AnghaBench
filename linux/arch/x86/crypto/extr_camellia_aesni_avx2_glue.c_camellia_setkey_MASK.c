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
struct TYPE_2__ {int /*<<< orphan*/  crt_flags; } ;
struct crypto_skcipher {TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_skcipher*) ; 

__attribute__((used)) static int FUNC2(struct crypto_skcipher *tfm, const u8 *key,
			   unsigned int keylen)
{
	return FUNC0(FUNC1(tfm), key, keylen,
				 &tfm->base.crt_flags);
}