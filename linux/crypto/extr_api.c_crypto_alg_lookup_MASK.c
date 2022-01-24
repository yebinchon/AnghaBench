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
 int CRYPTO_ALG_TESTED ; 
 int /*<<< orphan*/  ELIBBAD ; 
 struct crypto_alg* FUNC0 (int /*<<< orphan*/ ) ; 
 struct crypto_alg* FUNC1 (char const*,int,int) ; 
 int /*<<< orphan*/  crypto_alg_sem ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct crypto_alg *FUNC6(const char *name, u32 type,
					    u32 mask)
{
	struct crypto_alg *alg;
	u32 test = 0;

	if (!((type | mask) & CRYPTO_ALG_TESTED))
		test |= CRYPTO_ALG_TESTED;

	FUNC4(&crypto_alg_sem);
	alg = FUNC1(name, type | test, mask | test);
	if (!alg && test) {
		alg = FUNC1(name, type, mask);
		if (alg && !FUNC2(alg)) {
			/* Test failed */
			FUNC3(alg);
			alg = FUNC0(-ELIBBAD);
		}
	}
	FUNC5(&crypto_alg_sem);

	return alg;
}