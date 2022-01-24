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
struct TYPE_2__ {int /*<<< orphan*/  data_pool_id; } ;
struct rbd_device {TYPE_1__ header; int /*<<< orphan*/  header_oloc; int /*<<< orphan*/  header_oid; } ;
typedef  int /*<<< orphan*/  data_pool_id ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_NOPOOL ; 
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rbd_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct rbd_device *rbd_dev)
{
	__le64 data_pool_id;
	int ret;

	ret = FUNC2(rbd_dev, &rbd_dev->header_oid,
				  &rbd_dev->header_oloc, "get_data_pool",
				  NULL, 0, &data_pool_id, sizeof(data_pool_id));
	if (ret < 0)
		return ret;
	if (ret < sizeof(data_pool_id))
		return -EBADMSG;

	rbd_dev->header.data_pool_id = FUNC1(data_pool_id);
	FUNC0(rbd_dev->header.data_pool_id == CEPH_NOPOOL);
	return 0;
}