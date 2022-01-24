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
struct crypto_rng {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_rng*) ; 
 int FUNC1 (struct crypto_rng*) ; 
 struct crypto_rng* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_rng* crypto_default_rng ; 
 int /*<<< orphan*/  crypto_default_rng_lock ; 
 int /*<<< orphan*/  crypto_default_rng_refcnt ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_rng*) ; 
 int FUNC4 (struct crypto_rng*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_rng*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(void)
{
	struct crypto_rng *rng;
	int err;

	FUNC6(&crypto_default_rng_lock);
	if (!crypto_default_rng) {
		rng = FUNC2("stdrng", 0, 0);
		err = FUNC1(rng);
		if (FUNC0(rng))
			goto unlock;

		err = FUNC4(rng, NULL, FUNC5(rng));
		if (err) {
			FUNC3(rng);
			goto unlock;
		}

		crypto_default_rng = rng;
	}

	crypto_default_rng_refcnt++;
	err = 0;

unlock:
	FUNC7(&crypto_default_rng_lock);

	return err;
}