#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rbd_device {TYPE_1__* spec; } ;
struct parent_image_info {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  snap_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct rbd_device*,struct page*,struct page*,struct parent_image_info*) ; 
 int FUNC2 (struct rbd_device*,struct page*,struct page*,struct parent_image_info*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct page*) ; 

__attribute__((used)) static int FUNC6(struct rbd_device *rbd_dev,
			   struct parent_image_info *pii)
{
	struct page *req_page, *reply_page;
	void *p;
	int ret;

	req_page = FUNC3(GFP_KERNEL);
	if (!req_page)
		return -ENOMEM;

	reply_page = FUNC3(GFP_KERNEL);
	if (!reply_page) {
		FUNC0(req_page);
		return -ENOMEM;
	}

	p = FUNC5(req_page);
	FUNC4(&p, rbd_dev->spec->snap_id);
	ret = FUNC1(rbd_dev, req_page, reply_page, pii);
	if (ret > 0)
		ret = FUNC2(rbd_dev, req_page, reply_page,
					       pii);

	FUNC0(req_page);
	FUNC0(reply_page);
	return ret;
}