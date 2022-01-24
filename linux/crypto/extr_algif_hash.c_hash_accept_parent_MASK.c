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
struct sock {int dummy; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_NEED_KEY ; 
 int ENOKEY ; 
 int FUNC0 (struct crypto_ahash*) ; 
 int FUNC1 (void*,struct sock*) ; 

__attribute__((used)) static int FUNC2(void *private, struct sock *sk)
{
	struct crypto_ahash *tfm = private;

	if (FUNC0(tfm) & CRYPTO_TFM_NEED_KEY)
		return -ENOKEY;

	return FUNC1(private, sk);
}