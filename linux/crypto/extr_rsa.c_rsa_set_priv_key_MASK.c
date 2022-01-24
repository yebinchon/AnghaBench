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
struct rsa_mpi_key {void* n; void* e; void* d; } ;
struct rsa_key {int /*<<< orphan*/  n_sz; int /*<<< orphan*/  n; int /*<<< orphan*/  e_sz; int /*<<< orphan*/  e; int /*<<< orphan*/  d_sz; int /*<<< orphan*/  d; int /*<<< orphan*/  member_0; } ;
struct crypto_akcipher {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct rsa_mpi_key* FUNC0 (struct crypto_akcipher*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct rsa_mpi_key*) ; 
 int FUNC5 (struct rsa_key*,void const*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct crypto_akcipher *tfm, const void *key,
			    unsigned int keylen)
{
	struct rsa_mpi_key *mpi_key = FUNC0(tfm);
	struct rsa_key raw_key = {0};
	int ret;

	/* Free the old MPI key if any */
	FUNC4(mpi_key);

	ret = FUNC5(&raw_key, key, keylen);
	if (ret)
		return ret;

	mpi_key->d = FUNC2(raw_key.d, raw_key.d_sz);
	if (!mpi_key->d)
		goto err;

	mpi_key->e = FUNC2(raw_key.e, raw_key.e_sz);
	if (!mpi_key->e)
		goto err;

	mpi_key->n = FUNC2(raw_key.n, raw_key.n_sz);
	if (!mpi_key->n)
		goto err;

	if (FUNC3(FUNC1(mpi_key->n) << 3)) {
		FUNC4(mpi_key);
		return -EINVAL;
	}

	return 0;

err:
	FUNC4(mpi_key);
	return -ENOMEM;
}