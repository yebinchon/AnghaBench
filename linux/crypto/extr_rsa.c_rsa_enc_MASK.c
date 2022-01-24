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
struct rsa_mpi_key {int /*<<< orphan*/  e; int /*<<< orphan*/  n; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_request {int /*<<< orphan*/  dst_len; int /*<<< orphan*/  dst; int /*<<< orphan*/  src_len; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  MPI ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (struct rsa_mpi_key const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_akcipher* FUNC1 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct rsa_mpi_key* FUNC6 (struct crypto_akcipher*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct akcipher_request *req)
{
	struct crypto_akcipher *tfm = FUNC1(req);
	const struct rsa_mpi_key *pkey = FUNC6(tfm);
	MPI m, c = FUNC2(0);
	int ret = 0;
	int sign;

	if (!c)
		return -ENOMEM;

	if (FUNC7(!pkey->n || !pkey->e)) {
		ret = -EINVAL;
		goto err_free_c;
	}

	ret = -ENOMEM;
	m = FUNC4(req->src, req->src_len);
	if (!m)
		goto err_free_c;

	ret = FUNC0(pkey, c, m);
	if (ret)
		goto err_free_m;

	ret = FUNC5(c, req->dst, req->dst_len, &sign);
	if (ret)
		goto err_free_m;

	if (sign < 0)
		ret = -EBADMSG;

err_free_m:
	FUNC3(m);
err_free_c:
	FUNC3(c);
	return ret;
}