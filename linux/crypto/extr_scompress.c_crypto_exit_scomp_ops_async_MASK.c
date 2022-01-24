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
struct crypto_tfm {int dummy; } ;
struct crypto_scomp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_scomp*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct crypto_scomp** FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scomp_lock ; 
 int /*<<< orphan*/  scomp_scratch_users ; 

__attribute__((used)) static void FUNC5(struct crypto_tfm *tfm)
{
	struct crypto_scomp **ctx = FUNC2(tfm);

	FUNC0(*ctx);

	FUNC3(&scomp_lock);
	if (!--scomp_scratch_users)
		FUNC1();
	FUNC4(&scomp_lock);
}