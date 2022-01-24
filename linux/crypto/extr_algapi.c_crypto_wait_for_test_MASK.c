#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cra_driver_name; } ;
struct crypto_larval {TYPE_1__ alg; int /*<<< orphan*/  completion; struct crypto_larval* adult; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_MSG_ALG_LOADED ; 
 int /*<<< orphan*/  CRYPTO_MSG_ALG_REGISTER ; 
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct crypto_larval*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct crypto_larval *larval)
{
	int err;

	err = FUNC3(CRYPTO_MSG_ALG_REGISTER, larval->adult);
	if (err != NOTIFY_STOP) {
		if (FUNC0(err != NOTIFY_DONE))
			goto out;
		FUNC1(larval->alg.cra_driver_name, 0);
	}

	err = FUNC4(&larval->completion);
	FUNC0(err);
	if (!err)
		FUNC3(CRYPTO_MSG_ALG_LOADED, larval);

out:
	FUNC2(&larval->alg);
}