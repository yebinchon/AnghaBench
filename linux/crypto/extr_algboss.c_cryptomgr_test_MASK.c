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
struct crypto_test_param {int type; int /*<<< orphan*/  driver; int /*<<< orphan*/  alg; } ;

/* Variables and functions */
 int CRYPTO_ALG_TESTED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_test_param*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *data)
{
	struct crypto_test_param *param = data;
	u32 type = param->type;
	int err = 0;

#ifdef CONFIG_CRYPTO_MANAGER_DISABLE_TESTS
	goto skiptest;
#endif

	if (type & CRYPTO_ALG_TESTED)
		goto skiptest;

	err = FUNC0(param->driver, param->alg, type, CRYPTO_ALG_TESTED);

skiptest:
	FUNC1(param->driver, err);

	FUNC2(param);
	FUNC3(0);
}