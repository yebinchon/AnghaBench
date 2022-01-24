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
struct crypto_akcipher {int dummy; } ;
struct akcipher_testvec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_akcipher*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,int) ; 
 int FUNC3 (struct crypto_akcipher*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct crypto_akcipher *tfm, const char *alg,
			 const struct akcipher_testvec *vecs,
			 unsigned int tcount)
{
	const char *algo =
		FUNC1(FUNC0(tfm));
	int ret, i;

	for (i = 0; i < tcount; i++) {
		ret = FUNC3(tfm, vecs++);
		if (!ret)
			continue;

		FUNC2("alg: akcipher: test %d failed for %s, err=%d\n",
		       i + 1, algo, ret);
		return ret;
	}
	return 0;
}