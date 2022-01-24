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
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_READ ; 
 int E2BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  RBD_DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ceph_osd_client*,struct ceph_object_id*,struct ceph_object_locator*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct page*,size_t,struct page**,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,size_t) ; 
 void const* FUNC4 (struct page*) ; 

__attribute__((used)) static int FUNC5(struct rbd_device *rbd_dev,
			     struct ceph_object_id *oid,
			     struct ceph_object_locator *oloc,
			     const char *method_name,
			     const void *outbound,
			     size_t outbound_size,
			     void *inbound,
			     size_t inbound_size)
{
	struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
	struct page *req_page = NULL;
	struct page *reply_page;
	int ret;

	/*
	 * Method calls are ultimately read operations.  The result
	 * should placed into the inbound buffer provided.  They
	 * also supply outbound data--parameters for the object
	 * method.  Currently if this is present it will be a
	 * snapshot id.
	 */
	if (outbound) {
		if (outbound_size > PAGE_SIZE)
			return -E2BIG;

		req_page = FUNC1(GFP_KERNEL);
		if (!req_page)
			return -ENOMEM;

		FUNC3(FUNC4(req_page), outbound, outbound_size);
	}

	reply_page = FUNC1(GFP_KERNEL);
	if (!reply_page) {
		if (req_page)
			FUNC0(req_page);
		return -ENOMEM;
	}

	ret = FUNC2(osdc, oid, oloc, RBD_DRV_NAME, method_name,
			     CEPH_OSD_FLAG_READ, req_page, outbound_size,
			     &reply_page, &inbound_size);
	if (!ret) {
		FUNC3(inbound, FUNC4(reply_page), inbound_size);
		ret = inbound_size;
	}

	if (req_page)
		FUNC0(req_page);
	FUNC0(reply_page);
	return ret;
}