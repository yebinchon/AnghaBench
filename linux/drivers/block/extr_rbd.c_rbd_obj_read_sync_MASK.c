#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rbd_device {TYPE_2__* rbd_client; } ;
struct page {int dummy; } ;
struct ceph_osd_request {int /*<<< orphan*/  r_flags; int /*<<< orphan*/  r_base_oloc; int /*<<< orphan*/  r_base_oid; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_READ ; 
 int /*<<< orphan*/  CEPH_OSD_OP_READ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct page**) ; 
 int FUNC1 (struct page**) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct page** FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page**,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ceph_object_id*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ceph_object_locator*) ; 
 int FUNC7 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 struct ceph_osd_request* FUNC8 (struct ceph_osd_client*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_osd_client*,struct ceph_osd_request*,int) ; 
 int FUNC11 (struct ceph_osd_client*,struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct ceph_osd_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ceph_osd_request*,int /*<<< orphan*/ ,struct page**,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC14(struct rbd_device *rbd_dev,
			     struct ceph_object_id *oid,
			     struct ceph_object_locator *oloc,
			     void *buf, int buf_len)

{
	struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
	struct ceph_osd_request *req;
	struct page **pages;
	int num_pages = FUNC2(0, buf_len);
	int ret;

	req = FUNC8(osdc, NULL, 1, false, GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	FUNC5(&req->r_base_oid, oid);
	FUNC6(&req->r_base_oloc, oloc);
	req->r_flags = CEPH_OSD_FLAG_READ;

	pages = FUNC3(num_pages, GFP_KERNEL);
	if (FUNC0(pages)) {
		ret = FUNC1(pages);
		goto out_req;
	}

	FUNC12(req, 0, CEPH_OSD_OP_READ, 0, buf_len, 0, 0);
	FUNC13(req, 0, pages, buf_len, 0, false,
					 true);

	ret = FUNC7(req, GFP_KERNEL);
	if (ret)
		goto out_req;

	FUNC10(osdc, req, false);
	ret = FUNC11(osdc, req);
	if (ret >= 0)
		FUNC4(pages, buf, 0, ret);

out_req:
	FUNC9(req);
	return ret;
}