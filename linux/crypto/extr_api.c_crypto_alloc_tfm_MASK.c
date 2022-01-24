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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_type {int dummy; } ;
typedef  void crypto_alg ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (void*,struct crypto_type const*) ; 
 void* FUNC4 (char const*,struct crypto_type const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void *FUNC7(const char *alg_name,
		       const struct crypto_type *frontend, u32 type, u32 mask)
{
	void *tfm;
	int err;

	for (;;) {
		struct crypto_alg *alg;

		alg = FUNC4(alg_name, frontend, type, mask);
		if (FUNC1(alg)) {
			err = FUNC2(alg);
			goto err;
		}

		tfm = FUNC3(alg, frontend);
		if (!FUNC1(tfm))
			return tfm;

		FUNC5(alg);
		err = FUNC2(tfm);

err:
		if (err != -EAGAIN)
			break;
		if (FUNC6(current)) {
			err = -EINTR;
			break;
		}
	}

	return FUNC0(err);
}