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
struct elog_obj {int /*<<< orphan*/  kobj; int /*<<< orphan*/  id; } ;
struct elog_attribute {int /*<<< orphan*/  attr; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct elog_obj *elog_obj,
			      struct elog_attribute *attr,
			      const char *buf,
			      size_t count)
{
	FUNC1(elog_obj->id);
	FUNC2(&elog_obj->kobj, &attr->attr);
	FUNC0(&elog_obj->kobj);
	return count;
}