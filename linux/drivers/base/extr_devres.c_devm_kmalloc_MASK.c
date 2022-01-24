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
struct devres {void* data; int /*<<< orphan*/  node; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct devres* FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  devm_kmalloc_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC4 (int) ; 

void * FUNC5(struct device *dev, size_t size, gfp_t gfp)
{
	struct devres *dr;

	/* use raw alloc_dr for kmalloc caller tracing */
	dr = FUNC0(devm_kmalloc_release, size, gfp, FUNC1(dev));
	if (FUNC4(!dr))
		return NULL;

	/*
	 * This is named devm_kzalloc_release for historical reasons
	 * The initial implementation did not support kmalloc, only kzalloc
	 */
	FUNC3(&dr->node, "devm_kzalloc_release", size);
	FUNC2(dev, dr->data);
	return dr->data;
}