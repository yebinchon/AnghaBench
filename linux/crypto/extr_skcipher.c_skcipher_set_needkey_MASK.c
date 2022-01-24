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
struct crypto_skcipher {scalar_t__ keysize; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_NEED_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct crypto_skcipher *tfm)
{
	if (tfm->keysize)
		FUNC0(tfm, CRYPTO_TFM_NEED_KEY);
}