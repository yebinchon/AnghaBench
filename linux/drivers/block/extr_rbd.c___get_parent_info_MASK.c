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
typedef  int /*<<< orphan*/  u64 ;
struct rbd_device {int /*<<< orphan*/  header_oloc; int /*<<< orphan*/  header_oid; TYPE_2__* rbd_client; } ;
struct parent_image_info {int /*<<< orphan*/  overlap; int /*<<< orphan*/  has_overlap; } ;
struct page {int dummy; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_READ ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ceph_osd_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,struct page*,int,struct page**,size_t*) ; 
 int FUNC3 (void**,void*,struct parent_image_info*) ; 
 int /*<<< orphan*/  e_inval ; 
 void* FUNC4 (struct page*) ; 

__attribute__((used)) static int FUNC5(struct rbd_device *rbd_dev,
			     struct page *req_page,
			     struct page *reply_page,
			     struct parent_image_info *pii)
{
	struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
	size_t reply_len = PAGE_SIZE;
	void *p, *end;
	int ret;

	ret = FUNC2(osdc, &rbd_dev->header_oid, &rbd_dev->header_oloc,
			     "rbd", "parent_get", CEPH_OSD_FLAG_READ,
			     req_page, sizeof(u64), &reply_page, &reply_len);
	if (ret)
		return ret == -EOPNOTSUPP ? 1 : ret;

	p = FUNC4(reply_page);
	end = p + reply_len;
	ret = FUNC3(&p, end, pii);
	if (ret)
		return ret;

	ret = FUNC2(osdc, &rbd_dev->header_oid, &rbd_dev->header_oloc,
			     "rbd", "parent_overlap_get", CEPH_OSD_FLAG_READ,
			     req_page, sizeof(u64), &reply_page, &reply_len);
	if (ret)
		return ret;

	p = FUNC4(reply_page);
	end = p + reply_len;
	FUNC1(&p, end, pii->has_overlap, e_inval);
	if (pii->has_overlap)
		FUNC0(&p, end, pii->overlap, e_inval);

	return 0;

e_inval:
	return -EINVAL;
}