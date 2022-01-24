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
struct jitterentropy {int /*<<< orphan*/  jent_lock; int /*<<< orphan*/ * entropy_collector; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 struct jitterentropy* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct crypto_tfm *tfm)
{
	struct jitterentropy *rng = FUNC0(tfm);

	FUNC2(&rng->jent_lock);
	if (rng->entropy_collector)
		FUNC1(rng->entropy_collector);
	rng->entropy_collector = NULL;
	FUNC3(&rng->jent_lock);
}