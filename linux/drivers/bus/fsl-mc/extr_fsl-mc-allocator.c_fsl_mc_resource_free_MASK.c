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
struct fsl_mc_resource_pool {scalar_t__ type; scalar_t__ free_count; scalar_t__ max_count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  free_list; } ;
struct fsl_mc_resource {scalar_t__ type; int /*<<< orphan*/  node; struct fsl_mc_resource_pool* parent_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fsl_mc_resource *resource)
{
	struct fsl_mc_resource_pool *res_pool;

	res_pool = resource->parent_pool;
	if (resource->type != res_pool->type)
		return;

	FUNC2(&res_pool->mutex);
	if (res_pool->free_count < 0 ||
	    res_pool->free_count >= res_pool->max_count)
		goto out_unlock;

	if (!FUNC1(&resource->node))
		goto out_unlock;

	FUNC0(&resource->node, &res_pool->free_list);
	res_pool->free_count++;
out_unlock:
	FUNC3(&res_pool->mutex);
}