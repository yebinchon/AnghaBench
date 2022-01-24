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
struct drbg_string {int dummy; } ;
struct drbg_state {int pr; int seeded; int /*<<< orphan*/  drbg_mutex; int /*<<< orphan*/ * jent; int /*<<< orphan*/  reseed_threshold; int /*<<< orphan*/ * core; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drbg_state*) ; 
 int /*<<< orphan*/ * drbg_cores ; 
 int /*<<< orphan*/  FUNC3 (struct drbg_state*) ; 
 int FUNC4 (struct drbg_state*) ; 
 int FUNC5 (struct drbg_state*,struct drbg_string*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drbg_state*) ; 
 scalar_t__ fips_enabled ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct drbg_state *drbg, struct drbg_string *pers,
			    int coreref, bool pr)
{
	int ret;
	bool reseed = true;

	FUNC9("DRBG: Initializing DRBG core %d with prediction resistance "
		 "%s\n", coreref, pr ? "enabled" : "disabled");
	FUNC7(&drbg->drbg_mutex);

	/* 9.1 step 1 is implicit with the selected DRBG type */

	/*
	 * 9.1 step 2 is implicit as caller can select prediction resistance
	 * and the flag is copied into drbg->flags --
	 * all DRBG types support prediction resistance
	 */

	/* 9.1 step 4 is implicit in  drbg_sec_strength */

	if (!drbg->core) {
		drbg->core = &drbg_cores[coreref];
		drbg->pr = pr;
		drbg->seeded = false;
		drbg->reseed_threshold = FUNC3(drbg);

		ret = FUNC2(drbg);
		if (ret)
			goto unlock;

		ret = FUNC4(drbg);
		if (ret)
			goto free_everything;

		if (FUNC0(drbg->jent)) {
			ret = FUNC1(drbg->jent);
			drbg->jent = NULL;
			if (fips_enabled || ret != -ENOENT)
				goto free_everything;
			FUNC10("DRBG: Continuing without Jitter RNG\n");
		}

		reseed = false;
	}

	ret = FUNC5(drbg, pers, reseed);

	if (ret && !reseed)
		goto free_everything;

	FUNC8(&drbg->drbg_mutex);
	return ret;

unlock:
	FUNC8(&drbg->drbg_mutex);
	return ret;

free_everything:
	FUNC8(&drbg->drbg_mutex);
	FUNC6(drbg);
	return ret;
}