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
struct TYPE_4__ {scalar_t__ func; } ;
struct drbg_state {TYPE_1__* d_ops; int /*<<< orphan*/ * jent; int /*<<< orphan*/  seed_work; TYPE_2__ random_ready; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* crypto_fini ) (struct drbg_state*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct drbg_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drbg_state*) ; 

__attribute__((used)) static int FUNC5(struct drbg_state *drbg)
{
	if (drbg->random_ready.func) {
		FUNC2(&drbg->random_ready);
		FUNC0(&drbg->seed_work);
		FUNC1(drbg->jent);
		drbg->jent = NULL;
	}

	if (drbg->d_ops)
		drbg->d_ops->crypto_fini(drbg);
	FUNC3(drbg);
	/* no scrubbing of test_data -- this shall survive an uninstantiate */
	return 0;
}