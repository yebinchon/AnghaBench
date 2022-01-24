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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct counter_device_attr {struct counter_count_unit* component; } ;
struct counter_device {TYPE_1__* ops; } ;
struct counter_count_unit {struct counter_count* count; } ;
struct counter_count {size_t function; int* functions_list; } ;
typedef  int ssize_t ;
typedef  enum counter_count_function { ____Placeholder_counter_count_function } counter_count_function ;
struct TYPE_2__ {int (* function_get ) (struct counter_device* const,struct counter_count* const,size_t*) ;} ;

/* Variables and functions */
 char** counter_count_function_str ; 
 struct counter_device* FUNC0 (struct device*) ; 
 int FUNC1 (char*,char*,char*) ; 
 int FUNC2 (struct counter_device* const,struct counter_count* const,size_t*) ; 
 struct counter_device_attr* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	int err;
	struct counter_device *const counter = FUNC0(dev);
	const struct counter_device_attr *const devattr = FUNC3(attr);
	const struct counter_count_unit *const component = devattr->component;
	struct counter_count *const count = component->count;
	size_t func_index;
	enum counter_count_function function;

	err = counter->ops->function_get(counter, count, &func_index);
	if (err)
		return err;

	count->function = func_index;

	function = count->functions_list[func_index];
	return FUNC1(buf, "%s\n", counter_count_function_str[function]);
}