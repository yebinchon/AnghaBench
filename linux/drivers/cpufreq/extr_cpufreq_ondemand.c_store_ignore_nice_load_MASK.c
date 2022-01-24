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
struct gov_attr_set {int dummy; } ;
struct dbs_data {unsigned int ignore_nice_load; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dbs_data*) ; 
 int FUNC1 (char const*,char*,unsigned int*) ; 
 struct dbs_data* FUNC2 (struct gov_attr_set*) ; 

__attribute__((used)) static ssize_t FUNC3(struct gov_attr_set *attr_set,
				      const char *buf, size_t count)
{
	struct dbs_data *dbs_data = FUNC2(attr_set);
	unsigned int input;
	int ret;

	ret = FUNC1(buf, "%u", &input);
	if (ret != 1)
		return -EINVAL;

	if (input > 1)
		input = 1;

	if (input == dbs_data->ignore_nice_load) { /* nothing to do */
		return count;
	}
	dbs_data->ignore_nice_load = input;

	/* we need to re-evaluate prev_cpu_idle */
	FUNC0(dbs_data);

	return count;
}