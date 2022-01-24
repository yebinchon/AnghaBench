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
struct rbd_spec {int /*<<< orphan*/  kref; int /*<<< orphan*/  snap_id; int /*<<< orphan*/  pool_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_NOPOOL ; 
 int /*<<< orphan*/  CEPH_NOSNAP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rbd_spec* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rbd_spec *FUNC2(void)
{
	struct rbd_spec *spec;

	spec = FUNC1(sizeof (*spec), GFP_KERNEL);
	if (!spec)
		return NULL;

	spec->pool_id = CEPH_NOPOOL;
	spec->snap_id = CEPH_NOSNAP;
	FUNC0(&spec->kref);

	return spec;
}