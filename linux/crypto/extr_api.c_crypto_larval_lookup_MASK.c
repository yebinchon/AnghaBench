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
typedef  int u32 ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 int CRYPTO_ALG_DEAD ; 
 int CRYPTO_ALG_LARVAL ; 
 int CRYPTO_ALG_NEED_FALLBACK ; 
 int CRYPTO_NOLOAD ; 
 int /*<<< orphan*/  ENOENT ; 
 struct crypto_alg* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_alg*) ; 
 struct crypto_alg* FUNC2 (char const*,int,int) ; 
 scalar_t__ FUNC3 (struct crypto_alg*) ; 
 struct crypto_alg* FUNC4 (char const*,int,int) ; 
 struct crypto_alg* FUNC5 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

__attribute__((used)) static struct crypto_alg *FUNC7(const char *name, u32 type,
					       u32 mask)
{
	struct crypto_alg *alg;

	if (!name)
		return FUNC0(-ENOENT);

	type &= ~(CRYPTO_ALG_LARVAL | CRYPTO_ALG_DEAD);
	mask &= ~(CRYPTO_ALG_LARVAL | CRYPTO_ALG_DEAD);

	alg = FUNC2(name, type, mask);
	if (!alg && !(mask & CRYPTO_NOLOAD)) {
		FUNC6("crypto-%s", name);

		if (!((type ^ CRYPTO_ALG_NEED_FALLBACK) & mask &
		      CRYPTO_ALG_NEED_FALLBACK))
			FUNC6("crypto-%s-all", name);

		alg = FUNC2(name, type, mask);
	}

	if (!FUNC1(alg) && FUNC3(alg))
		alg = FUNC5(alg);
	else if (!alg)
		alg = FUNC4(name, type, mask);

	return alg;
}