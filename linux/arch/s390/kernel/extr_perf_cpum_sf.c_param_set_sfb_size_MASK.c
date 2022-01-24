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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 unsigned long CPUM_SF_MAX_SDB ; 
 unsigned long CPUM_SF_MIN_SDB ; 
 int /*<<< orphan*/  CPUM_SF_SDB_DIAG_FACTOR ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 () ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int FUNC5 (char const*,char*,unsigned long*,unsigned long*) ; 
 scalar_t__ FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(const char *val, const struct kernel_param *kp)
{
	int rc;
	unsigned long min, max;

	if (!FUNC0())
		return -ENODEV;
	if (!val || !FUNC7(val))
		return -EINVAL;

	/* Valid parameter values: "min,max" or "max" */
	min = CPUM_SF_MIN_SDB;
	max = CPUM_SF_MAX_SDB;
	if (FUNC6(val, ','))
		rc = (FUNC5(val, "%lu,%lu", &min, &max) == 2) ? 0 : -EINVAL;
	else
		rc = FUNC2(val, 10, &max);

	if (min < 2 || min >= max || max > FUNC1())
		rc = -EINVAL;
	if (rc)
		return rc;

	FUNC4(min, max);
	FUNC3("The sampling buffer limits have changed to: "
		"min=%lu max=%lu (diag=x%lu)\n",
		CPUM_SF_MIN_SDB, CPUM_SF_MAX_SDB, CPUM_SF_SDB_DIAG_FACTOR);
	return 0;
}