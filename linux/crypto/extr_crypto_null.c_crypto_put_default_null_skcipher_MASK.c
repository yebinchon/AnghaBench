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

/* Variables and functions */
 int /*<<< orphan*/ * crypto_default_null_skcipher ; 
 int /*<<< orphan*/  crypto_default_null_skcipher_lock ; 
 int /*<<< orphan*/  crypto_default_null_skcipher_refcnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	FUNC1(&crypto_default_null_skcipher_lock);
	if (!--crypto_default_null_skcipher_refcnt) {
		FUNC0(crypto_default_null_skcipher);
		crypto_default_null_skcipher = NULL;
	}
	FUNC2(&crypto_default_null_skcipher_lock);
}