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
struct option {struct list_objects_filter_options* value; } ;
struct list_objects_filter_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_objects_filter_options*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_objects_filter_options*,char const*) ; 

int FUNC2(const struct option *opt,
				  const char *arg, int unset)
{
	struct list_objects_filter_options *filter_options = opt->value;

	if (unset || !arg)
		FUNC0(filter_options);
	else
		FUNC1(filter_options, arg);
	return 0;
}