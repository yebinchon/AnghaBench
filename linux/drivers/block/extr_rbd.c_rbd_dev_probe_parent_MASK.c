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
struct rbd_device {int /*<<< orphan*/  parent_ref; struct rbd_device* parent; int /*<<< orphan*/  parent_spec; int /*<<< orphan*/  rbd_client; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int RBD_MAX_PARENT_CHAIN_LEN ; 
 struct rbd_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rbd_device*) ; 
 int FUNC5 (struct rbd_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct rbd_device *rbd_dev, int depth)
{
	struct rbd_device *parent = NULL;
	int ret;

	if (!rbd_dev->parent_spec)
		return 0;

	if (++depth > RBD_MAX_PARENT_CHAIN_LEN) {
		FUNC3("parent chain is too long (%d)\n", depth);
		ret = -EINVAL;
		goto out_err;
	}

	parent = FUNC0(rbd_dev->rbd_client, rbd_dev->parent_spec);
	if (!parent) {
		ret = -ENOMEM;
		goto out_err;
	}

	/*
	 * Images related by parent/child relationships always share
	 * rbd_client and spec/parent_spec, so bump their refcounts.
	 */
	FUNC1(rbd_dev->rbd_client);
	FUNC7(rbd_dev->parent_spec);

	ret = FUNC5(parent, depth);
	if (ret < 0)
		goto out_err;

	rbd_dev->parent = parent;
	FUNC2(&rbd_dev->parent_ref, 1);
	return 0;

out_err:
	FUNC6(rbd_dev);
	FUNC4(parent);
	return ret;
}