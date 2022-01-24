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
typedef  int /*<<< orphan*/  ubuf ;
typedef  int /*<<< orphan*/  u8 ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct shash_alg {int (* final ) (struct shash_desc*,int /*<<< orphan*/ *) ;} ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int HASH_MAX_DIGESTSIZE ; 
 int MAX_ALGAPI_ALIGNMASK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC1 (int) ; 
 struct shash_alg* FUNC2 (struct crypto_shash*) ; 
 unsigned long FUNC3 (struct crypto_shash*) ; 
 unsigned int FUNC4 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (struct shash_desc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct shash_desc *desc, u8 *out)
{
	struct crypto_shash *tfm = desc->tfm;
	unsigned long alignmask = FUNC3(tfm);
	struct shash_alg *shash = FUNC2(tfm);
	unsigned int ds = FUNC4(tfm);
	/*
	 * We cannot count on __aligned() working for large values:
	 * https://patchwork.kernel.org/patch/9507697/
	 */
	u8 ubuf[MAX_ALGAPI_ALIGNMASK + HASH_MAX_DIGESTSIZE];
	u8 *buf = FUNC0(&ubuf[0], alignmask + 1);
	int err;

	if (FUNC1(buf + ds > ubuf + sizeof(ubuf)))
		return -EINVAL;

	err = shash->final(desc, buf);
	if (err)
		goto out;

	FUNC5(out, buf, ds);

out:
	FUNC6(buf, 0, ds);
	return err;
}