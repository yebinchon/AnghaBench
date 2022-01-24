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
struct attribute_container {int /*<<< orphan*/  node; int /*<<< orphan*/  containers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  attribute_container_list ; 
 int /*<<< orphan*/  attribute_container_mutex ; 
 int /*<<< orphan*/  internal_container_klist_get ; 
 int /*<<< orphan*/  internal_container_klist_put ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct attribute_container *cont)
{
	FUNC0(&cont->node);
	FUNC1(&cont->containers, internal_container_klist_get,
		   internal_container_klist_put);

	FUNC3(&attribute_container_mutex);
	FUNC2(&cont->node, &attribute_container_list);
	FUNC4(&attribute_container_mutex);

	return 0;
}