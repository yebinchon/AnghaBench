#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct crypto_akcipher {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  count; int /*<<< orphan*/  vecs; } ;
struct TYPE_4__ {TYPE_1__ akcipher; } ;
struct alg_test_desc {TYPE_2__ suite; int /*<<< orphan*/  alg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_akcipher*) ; 
 int FUNC1 (struct crypto_akcipher*) ; 
 struct crypto_akcipher* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_akcipher*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (struct crypto_akcipher*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct alg_test_desc *desc,
			     const char *driver, u32 type, u32 mask)
{
	struct crypto_akcipher *tfm;
	int err = 0;

	tfm = FUNC2(driver, type, mask);
	if (FUNC0(tfm)) {
		FUNC4("alg: akcipher: Failed to load tfm for %s: %ld\n",
		       driver, FUNC1(tfm));
		return FUNC1(tfm);
	}
	if (desc->suite.akcipher.vecs)
		err = FUNC5(tfm, desc->alg, desc->suite.akcipher.vecs,
				    desc->suite.akcipher.count);

	FUNC3(tfm);
	return err;
}