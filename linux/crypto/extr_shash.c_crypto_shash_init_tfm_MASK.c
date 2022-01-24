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
struct shash_alg {int /*<<< orphan*/  descsize; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_shash {int /*<<< orphan*/  descsize; } ;

/* Variables and functions */
 struct crypto_shash* FUNC0 (struct crypto_tfm*) ; 
 struct shash_alg* FUNC1 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_shash*,struct shash_alg*) ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm)
{
	struct crypto_shash *hash = FUNC0(tfm);
	struct shash_alg *alg = FUNC1(hash);

	hash->descsize = alg->descsize;

	FUNC2(hash, alg);

	return 0;
}