#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int features; } ;
struct rbd_device {TYPE_3__* spec; scalar_t__ image_format; TYPE_2__ header_oid; TYPE_1__ header; } ;
struct TYPE_6__ {scalar_t__ snap_id; int /*<<< orphan*/ * image_id; int /*<<< orphan*/  snap_name; int /*<<< orphan*/  image_name; scalar_t__ pool_ns; int /*<<< orphan*/  pool_name; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 int ENOENT ; 
 int RBD_FEATURE_LAYERING ; 
 int RBD_FEATURE_OBJECT_MAP ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (struct rbd_device*) ; 
 int FUNC4 (struct rbd_device*) ; 
 int FUNC5 (struct rbd_device*) ; 
 int FUNC6 (struct rbd_device*) ; 
 int FUNC7 (struct rbd_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rbd_device*) ; 
 int FUNC9 (struct rbd_device*) ; 
 int FUNC10 (struct rbd_device*) ; 
 int FUNC11 (struct rbd_device*) ; 
 int FUNC12 (struct rbd_device*) ; 
 int FUNC13 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct rbd_device*) ; 

__attribute__((used)) static int FUNC15(struct rbd_device *rbd_dev, int depth)
{
	int ret;

	/*
	 * Get the id from the image id object.  Unless there's an
	 * error, rbd_dev->spec->image_id will be filled in with
	 * a dynamically-allocated string, and rbd_dev->image_format
	 * will be set to either 1 or 2.
	 */
	ret = FUNC5(rbd_dev);
	if (ret)
		return ret;

	ret = FUNC4(rbd_dev);
	if (ret)
		goto err_out_format;

	if (!depth) {
		ret = FUNC11(rbd_dev);
		if (ret) {
			if (ret == -ENOENT)
				FUNC2("image %s/%s%s%s does not exist\n",
					rbd_dev->spec->pool_name,
					rbd_dev->spec->pool_ns ?: "",
					rbd_dev->spec->pool_ns ? "/" : "",
					rbd_dev->spec->image_name);
			goto err_out_format;
		}
	}

	ret = FUNC3(rbd_dev);
	if (ret)
		goto err_out_watch;

	/*
	 * If this image is the one being mapped, we have pool name and
	 * id, image name and id, and snap name - need to fill snap id.
	 * Otherwise this is a parent image, identified by pool, image
	 * and snap ids - need to fill in names for those ids.
	 */
	if (!depth)
		ret = FUNC13(rbd_dev);
	else
		ret = FUNC12(rbd_dev);
	if (ret) {
		if (ret == -ENOENT)
			FUNC2("snap %s/%s%s%s@%s does not exist\n",
				rbd_dev->spec->pool_name,
				rbd_dev->spec->pool_ns ?: "",
				rbd_dev->spec->pool_ns ? "/" : "",
				rbd_dev->spec->image_name,
				rbd_dev->spec->snap_name);
		goto err_out_probe;
	}

	ret = FUNC6(rbd_dev);
	if (ret)
		goto err_out_probe;

	if (rbd_dev->spec->snap_id != CEPH_NOSNAP &&
	    (rbd_dev->header.features & RBD_FEATURE_OBJECT_MAP)) {
		ret = FUNC10(rbd_dev);
		if (ret)
			goto err_out_probe;
	}

	if (rbd_dev->header.features & RBD_FEATURE_LAYERING) {
		ret = FUNC9(rbd_dev);
		if (ret)
			goto err_out_probe;
	}

	ret = FUNC7(rbd_dev, depth);
	if (ret)
		goto err_out_probe;

	FUNC0("discovered format %u image, header name is %s\n",
		rbd_dev->image_format, rbd_dev->header_oid.name);
	return 0;

err_out_probe:
	FUNC8(rbd_dev);
err_out_watch:
	if (!depth)
		FUNC14(rbd_dev);
err_out_format:
	rbd_dev->image_format = 0;
	FUNC1(rbd_dev->spec->image_id);
	rbd_dev->spec->image_id = NULL;
	return ret;
}