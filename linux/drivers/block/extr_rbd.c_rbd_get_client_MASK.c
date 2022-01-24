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
struct rbd_client {TYPE_2__* client; } ;
struct ceph_options {int dummy; } ;
struct TYPE_4__ {TYPE_1__* options; } ;
struct TYPE_3__ {int /*<<< orphan*/  mount_timeout; } ;

/* Variables and functions */
 struct rbd_client* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_options*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  client_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct rbd_client* FUNC5 (struct ceph_options*) ; 
 struct rbd_client* FUNC6 (struct ceph_options*) ; 
 int /*<<< orphan*/  FUNC7 (struct rbd_client*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static struct rbd_client *FUNC9(struct ceph_options *ceph_opts)
{
	struct rbd_client *rbdc;
	int ret;

	FUNC3(&client_mutex);
	rbdc = FUNC6(ceph_opts);
	if (rbdc) {
		FUNC1(ceph_opts);

		/*
		 * Using an existing client.  Make sure ->pg_pools is up to
		 * date before we look up the pool id in do_rbd_add().
		 */
		ret = FUNC2(rbdc->client,
					rbdc->client->options->mount_timeout);
		if (ret) {
			FUNC8(NULL, "failed to get latest osdmap: %d", ret);
			FUNC7(rbdc);
			rbdc = FUNC0(ret);
		}
	} else {
		rbdc = FUNC5(ceph_opts);
	}
	FUNC4(&client_mutex);

	return rbdc;
}