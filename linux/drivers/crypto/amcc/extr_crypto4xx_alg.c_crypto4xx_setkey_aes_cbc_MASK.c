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
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_FEEDBACK_MODE_NO_FB ; 
 int /*<<< orphan*/  CRYPTO_MODE_CBC ; 
 int FUNC0 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct crypto_skcipher *cipher,
			     const u8 *key, unsigned int keylen)
{
	return FUNC0(cipher, key, keylen, CRYPTO_MODE_CBC,
				    CRYPTO_FEEDBACK_MODE_NO_FB);
}