#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u64 ;
struct TYPE_7__ {int /*<<< orphan*/  size; } ;
struct rbd_device {size_t object_map_size; int /*<<< orphan*/  object_map; int /*<<< orphan*/  header_oloc; TYPE_4__* spec; TYPE_3__ mapping; int /*<<< orphan*/  layout; TYPE_2__* rbd_client; } ;
struct page {int dummy; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  snap_id; } ;
struct TYPE_6__ {TYPE_1__* client; } ;
struct TYPE_5__ {struct ceph_osd_client osdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_BYTE ; 
 size_t BITS_PER_OBJ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CEPH_OSD_FLAG_READ ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct page**) ; 
 int PAGE_SIZE ; 
 int FUNC3 (struct page**) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 struct page** FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page**,int /*<<< orphan*/ ,size_t,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ceph_osd_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct page**,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct page**,int) ; 
 int FUNC10 (void**,void*,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC12 (size_t,size_t) ; 
 size_t FUNC13 (void*) ; 
 int /*<<< orphan*/  oid ; 
 void* FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct rbd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct rbd_device*,char*,size_t,size_t) ; 

__attribute__((used)) static int FUNC18(struct rbd_device *rbd_dev)
{
	struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
	FUNC0(oid);
	struct page **pages;
	void *p, *end;
	size_t reply_len;
	u64 num_objects;
	u64 object_map_bytes;
	u64 object_map_size;
	int num_pages;
	int ret;

	FUNC15(!rbd_dev->object_map && !rbd_dev->object_map_size);

	num_objects = FUNC7(&rbd_dev->layout,
					   rbd_dev->mapping.size);
	object_map_bytes = FUNC1(num_objects * BITS_PER_OBJ,
					    BITS_PER_BYTE);
	num_pages = FUNC4(0, object_map_bytes) + 1;
	pages = FUNC5(num_pages, GFP_KERNEL);
	if (FUNC2(pages))
		return FUNC3(pages);

	reply_len = num_pages * PAGE_SIZE;
	FUNC16(rbd_dev, rbd_dev->spec->snap_id, &oid);
	ret = FUNC8(osdc, &oid, &rbd_dev->header_oloc,
			     "rbd", "object_map_load", CEPH_OSD_FLAG_READ,
			     NULL, 0, pages, &reply_len);
	if (ret)
		goto out;

	p = FUNC14(pages[0]);
	end = p + FUNC12(reply_len, (size_t)PAGE_SIZE);
	ret = FUNC10(&p, end, &object_map_size);
	if (ret)
		goto out;

	if (object_map_size != num_objects) {
		FUNC17(rbd_dev, "object map size mismatch: %llu vs %llu",
			 object_map_size, num_objects);
		ret = -EINVAL;
		goto out;
	}

	if (FUNC13(p) + object_map_bytes > reply_len) {
		ret = -EINVAL;
		goto out;
	}

	rbd_dev->object_map = FUNC11(object_map_bytes, GFP_KERNEL);
	if (!rbd_dev->object_map) {
		ret = -ENOMEM;
		goto out;
	}

	rbd_dev->object_map_size = object_map_size;
	FUNC6(pages, rbd_dev->object_map,
				   FUNC13(p), object_map_bytes);

out:
	FUNC9(pages, num_pages);
	return ret;
}