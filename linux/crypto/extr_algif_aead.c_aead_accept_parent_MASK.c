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
struct aead_tfm {int /*<<< orphan*/  aead; } ;

/* Variables and functions */
 int CRYPTO_TFM_NEED_KEY ; 
 int ENOKEY ; 
 int FUNC0 (void*,struct sock*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *private, struct sock *sk)
{
	struct aead_tfm *tfm = private;

	if (FUNC1(tfm->aead) & CRYPTO_TFM_NEED_KEY)
		return -ENOKEY;

	return FUNC0(private, sk);
}