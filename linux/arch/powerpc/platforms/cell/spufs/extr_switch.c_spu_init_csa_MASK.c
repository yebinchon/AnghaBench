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
struct spu_state {int /*<<< orphan*/  register_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct spu_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct spu_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct spu_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct spu_state*) ; 

int FUNC6(struct spu_state *csa)
{
	int rc;

	if (!csa)
		return -EINVAL;
	FUNC3(csa, 0, sizeof(struct spu_state));

	rc = FUNC5(csa);
	if (rc)
		return rc;

	FUNC4(&csa->register_lock);

	FUNC2(csa);
	FUNC0(csa);
	FUNC1(csa);

	return 0;
}