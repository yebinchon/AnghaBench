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

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scomp_lock ; 
 int /*<<< orphan*/  scomp_scratch_users ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm)
{
	int ret = 0;

	FUNC1(&scomp_lock);
	if (!scomp_scratch_users++)
		ret = FUNC0();
	FUNC2(&scomp_lock);

	return ret;
}