#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct rbd_spec {scalar_t__ pool_id; int /*<<< orphan*/  pool_name; } ;
struct rbd_options {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  features; } ;
struct TYPE_13__ {scalar_t__ object_size; } ;
struct rbd_device {TYPE_6__ header; TYPE_7__* disk; int /*<<< orphan*/  node; int /*<<< orphan*/  dev; TYPE_5__ layout; TYPE_4__* opts; TYPE_3__* spec; int /*<<< orphan*/  header_rwsem; int /*<<< orphan*/  config_info; } ;
struct rbd_client {TYPE_2__* client; } ;
struct ceph_options {int dummy; } ;
struct bus_type {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_15__ {int /*<<< orphan*/  disk_name; int /*<<< orphan*/  queue; } ;
struct TYPE_12__ {int read_only; scalar_t__ alloc_size; } ;
struct TYPE_11__ {scalar_t__ snap_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  osdmap; } ;
struct TYPE_10__ {TYPE_1__ osdc; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct rbd_client*) ; 
 int FUNC1 (struct rbd_client*) ; 
 unsigned long long SECTOR_SHIFT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (struct rbd_options*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC13 (struct rbd_device*) ; 
 int FUNC14 (char const*,struct ceph_options**,struct rbd_options**,struct rbd_spec**) ; 
 struct rbd_device* FUNC15 (struct rbd_client*,struct rbd_spec*,struct rbd_options*) ; 
 int /*<<< orphan*/  FUNC16 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct rbd_device*) ; 
 int FUNC18 (struct rbd_device*) ; 
 int FUNC19 (struct rbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct rbd_device*) ; 
 int /*<<< orphan*/  rbd_dev_list ; 
 int /*<<< orphan*/  rbd_dev_list_lock ; 
 struct rbd_client* FUNC22 (struct ceph_options*) ; 
 int /*<<< orphan*/  FUNC23 (struct rbd_client*) ; 
 int /*<<< orphan*/  FUNC24 (struct rbd_spec*) ; 
 int /*<<< orphan*/  FUNC25 (struct rbd_device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC30(struct bus_type *bus,
			  const char *buf,
			  size_t count)
{
	struct rbd_device *rbd_dev = NULL;
	struct ceph_options *ceph_opts = NULL;
	struct rbd_options *rbd_opts = NULL;
	struct rbd_spec *spec = NULL;
	struct rbd_client *rbdc;
	int rc;

	if (!FUNC28(THIS_MODULE))
		return -ENODEV;

	/* parse add command */
	rc = FUNC14(buf, &ceph_opts, &rbd_opts, &spec);
	if (rc < 0)
		goto out;

	rbdc = FUNC22(ceph_opts);
	if (FUNC0(rbdc)) {
		rc = FUNC1(rbdc);
		goto err_out_args;
	}

	/* pick the pool */
	rc = FUNC4(rbdc->client->osdc.osdmap, spec->pool_name);
	if (rc < 0) {
		if (rc == -ENOENT)
			FUNC12("pool %s does not exist\n", spec->pool_name);
		goto err_out_client;
	}
	spec->pool_id = (u64)rc;

	rbd_dev = FUNC15(rbdc, spec, rbd_opts);
	if (!rbd_dev) {
		rc = -ENOMEM;
		goto err_out_client;
	}
	rbdc = NULL;		/* rbd_dev now owns this */
	spec = NULL;		/* rbd_dev now owns this */
	rbd_opts = NULL;	/* rbd_dev now owns this */

	rbd_dev->config_info = FUNC9(buf, GFP_KERNEL);
	if (!rbd_dev->config_info) {
		rc = -ENOMEM;
		goto err_out_rbd_dev;
	}

	FUNC6(&rbd_dev->header_rwsem);
	rc = FUNC19(rbd_dev, 0);
	if (rc < 0) {
		FUNC29(&rbd_dev->header_rwsem);
		goto err_out_rbd_dev;
	}

	/* If we are mapping a snapshot it must be marked read-only */
	if (rbd_dev->spec->snap_id != CEPH_NOSNAP)
		rbd_dev->opts->read_only = true;

	if (rbd_dev->opts->alloc_size > rbd_dev->layout.object_size) {
		FUNC25(rbd_dev, "alloc_size adjusted to %u",
			 rbd_dev->layout.object_size);
		rbd_dev->opts->alloc_size = rbd_dev->layout.object_size;
	}

	rc = FUNC18(rbd_dev);
	if (rc)
		goto err_out_image_probe;

	rc = FUNC13(rbd_dev);
	if (rc)
		goto err_out_image_lock;

	/* Everything's ready.  Announce the disk to the world. */

	rc = FUNC5(&rbd_dev->dev);
	if (rc)
		goto err_out_image_lock;

	FUNC2(rbd_dev->disk);
	/* see rbd_init_disk() */
	FUNC3(rbd_dev->disk->queue);

	FUNC26(&rbd_dev_list_lock);
	FUNC10(&rbd_dev->node, &rbd_dev_list);
	FUNC27(&rbd_dev_list_lock);

	FUNC12("%s: capacity %llu features 0x%llx\n", rbd_dev->disk->disk_name,
		(unsigned long long)FUNC7(rbd_dev->disk) << SECTOR_SHIFT,
		rbd_dev->header.features);
	rc = count;
out:
	FUNC11(THIS_MODULE);
	return rc;

err_out_image_lock:
	FUNC21(rbd_dev);
	FUNC17(rbd_dev);
err_out_image_probe:
	FUNC20(rbd_dev);
err_out_rbd_dev:
	FUNC16(rbd_dev);
err_out_client:
	FUNC23(rbdc);
err_out_args:
	FUNC24(spec);
	FUNC8(rbd_opts);
	goto out;
}