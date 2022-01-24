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
struct shash_alg {scalar_t__ digestsize; } ;
struct TYPE_2__ {scalar_t__ cia_min_keysize; scalar_t__ cia_max_keysize; } ;
struct crypto_alg {int cra_blocksize; TYPE_1__ cra_cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_CIPHER ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_MASK ; 
 scalar_t__ FUNC0 (struct crypto_alg*) ; 
 struct crypto_alg* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_alg*) ; 
 scalar_t__ FUNC3 (struct shash_alg*) ; 

__attribute__((used)) static bool FUNC4(const char *essiv_cipher_name,
				       struct shash_alg *hash_alg,
				       int ivsize)
{
	struct crypto_alg *alg;
	bool ret = false;

	alg = FUNC1(essiv_cipher_name,
				    CRYPTO_ALG_TYPE_CIPHER,
				    CRYPTO_ALG_TYPE_MASK);
	if (FUNC0(alg))
		return false;

	if (hash_alg->digestsize < alg->cra_cipher.cia_min_keysize ||
	    hash_alg->digestsize > alg->cra_cipher.cia_max_keysize)
		goto out;

	if (ivsize != alg->cra_blocksize)
		goto out;

	if (FUNC3(hash_alg))
		goto out;

	ret = true;

out:
	FUNC2(alg);
	return ret;
}