#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct crypto_comp {int dummy; } ;
typedef  struct crypto_comp crypto_acomp ;
struct TYPE_6__ {int /*<<< orphan*/  count; int /*<<< orphan*/  vecs; } ;
struct TYPE_5__ {int /*<<< orphan*/  count; int /*<<< orphan*/  vecs; } ;
struct TYPE_7__ {TYPE_2__ decomp; TYPE_1__ comp; } ;
struct TYPE_8__ {TYPE_3__ comp; } ;
struct alg_test_desc {TYPE_4__ suite; } ;

/* Variables and functions */
 scalar_t__ CRYPTO_ALG_TYPE_ACOMPRESS ; 
 scalar_t__ CRYPTO_ALG_TYPE_ACOMPRESS_MASK ; 
 scalar_t__ FUNC0 (struct crypto_comp*) ; 
 int FUNC1 (struct crypto_comp*) ; 
 struct crypto_comp* FUNC2 (char const*,scalar_t__,scalar_t__) ; 
 struct crypto_comp* FUNC3 (char const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_comp*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_comp*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int FUNC7 (struct crypto_comp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct crypto_comp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const struct alg_test_desc *desc, const char *driver,
			 u32 type, u32 mask)
{
	struct crypto_comp *comp;
	struct crypto_acomp *acomp;
	int err;
	u32 algo_type = type & CRYPTO_ALG_TYPE_ACOMPRESS_MASK;

	if (algo_type == CRYPTO_ALG_TYPE_ACOMPRESS) {
		acomp = FUNC2(driver, type, mask);
		if (FUNC0(acomp)) {
			FUNC6("alg: acomp: Failed to load transform for %s: %ld\n",
			       driver, FUNC1(acomp));
			return FUNC1(acomp);
		}
		err = FUNC7(acomp, desc->suite.comp.comp.vecs,
				 desc->suite.comp.decomp.vecs,
				 desc->suite.comp.comp.count,
				 desc->suite.comp.decomp.count);
		FUNC4(acomp);
	} else {
		comp = FUNC3(driver, type, mask);
		if (FUNC0(comp)) {
			FUNC6("alg: comp: Failed to load transform for %s: %ld\n",
			       driver, FUNC1(comp));
			return FUNC1(comp);
		}

		err = FUNC8(comp, desc->suite.comp.comp.vecs,
				desc->suite.comp.decomp.vecs,
				desc->suite.comp.comp.count,
				desc->suite.comp.decomp.count);

		FUNC5(comp);
	}
	return err;
}