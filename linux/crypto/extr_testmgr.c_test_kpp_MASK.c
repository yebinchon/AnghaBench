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
struct kpp_testvec {int dummy; } ;
struct crypto_kpp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_kpp*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,int) ; 

__attribute__((used)) static int FUNC2(struct crypto_kpp *tfm, const char *alg,
		    const struct kpp_testvec *vecs, unsigned int tcount)
{
	int ret, i;

	for (i = 0; i < tcount; i++) {
		ret = FUNC0(tfm, vecs++, alg);
		if (ret) {
			FUNC1("alg: %s: test failed on vector %d, err=%d\n",
			       alg, i + 1, ret);
			return ret;
		}
	}
	return 0;
}