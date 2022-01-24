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
struct crypto_kpp {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  count; int /*<<< orphan*/  vecs; } ;
struct TYPE_4__ {TYPE_1__ kpp; } ;
struct alg_test_desc {TYPE_2__ suite; int /*<<< orphan*/  alg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_kpp*) ; 
 int FUNC1 (struct crypto_kpp*) ; 
 struct crypto_kpp* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_kpp*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (struct crypto_kpp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct alg_test_desc *desc, const char *driver,
			u32 type, u32 mask)
{
	struct crypto_kpp *tfm;
	int err = 0;

	tfm = FUNC2(driver, type, mask);
	if (FUNC0(tfm)) {
		FUNC4("alg: kpp: Failed to load tfm for %s: %ld\n",
		       driver, FUNC1(tfm));
		return FUNC1(tfm);
	}
	if (desc->suite.kpp.vecs)
		err = FUNC5(tfm, desc->alg, desc->suite.kpp.vecs,
			       desc->suite.kpp.count);

	FUNC3(tfm);
	return err;
}