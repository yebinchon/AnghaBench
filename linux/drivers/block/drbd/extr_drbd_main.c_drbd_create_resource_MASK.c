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
struct drbd_resource {struct drbd_resource* name; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  adm_mutex; int /*<<< orphan*/  conf_update; int /*<<< orphan*/  resources; int /*<<< orphan*/  write_ordering; int /*<<< orphan*/  connections; int /*<<< orphan*/  devices; int /*<<< orphan*/  kref; int /*<<< orphan*/  cpu_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WO_BDEV_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_resource*) ; 
 int /*<<< orphan*/  drbd_resources ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drbd_resource* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 struct drbd_resource* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct drbd_resource *FUNC11(const char *name)
{
	struct drbd_resource *resource;

	resource = FUNC6(sizeof(struct drbd_resource), GFP_KERNEL);
	if (!resource)
		goto fail;
	resource->name = FUNC5(name, GFP_KERNEL);
	if (!resource->name)
		goto fail_free_resource;
	if (!FUNC10(&resource->cpu_mask, GFP_KERNEL))
		goto fail_free_name;
	FUNC4(&resource->kref);
	FUNC2(&resource->devices);
	FUNC0(&resource->connections);
	resource->write_ordering = WO_BDEV_FLUSH;
	FUNC7(&resource->resources, &drbd_resources);
	FUNC8(&resource->conf_update);
	FUNC8(&resource->adm_mutex);
	FUNC9(&resource->req_lock);
	FUNC1(resource);
	return resource;

fail_free_name:
	FUNC3(resource->name);
fail_free_resource:
	FUNC3(resource);
fail:
	return NULL;
}