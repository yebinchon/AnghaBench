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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int cpu_management ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  smp_cpu_state_mutex ; 
 int FUNC4 (char const*,char*,int*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf,
				 size_t count)
{
	int val, rc;
	char delim;

	if (FUNC4(buf, "%d %c", &val, &delim) != 1)
		return -EINVAL;
	if (val != 0 && val != 1)
		return -EINVAL;
	rc = 0;
	FUNC0();
	FUNC1(&smp_cpu_state_mutex);
	if (cpu_management == val)
		goto out;
	rc = FUNC6(val);
	if (rc)
		goto out;
	cpu_management = val;
	FUNC5();
out:
	FUNC2(&smp_cpu_state_mutex);
	FUNC3();
	return rc ? rc : count;
}