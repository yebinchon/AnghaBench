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
typedef  size_t u32 ;
struct vio_dring_state {size_t cons; size_t prod; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct vio_disk_desc {TYPE_2__ hdr; int /*<<< orphan*/  ncookies; int /*<<< orphan*/  cookies; } ;
struct vdc_req_entry {struct request* req; } ;
struct TYPE_3__ {int /*<<< orphan*/  lp; struct vio_dring_state* drings; } ;
struct vdc_port {TYPE_1__ vio; struct vdc_req_entry* rq_arr; } ;
struct request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIO_DESC_FREE ; 
 size_t VIO_DRIVER_TX_RING ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vdc_port*,struct vio_disk_desc*) ; 
 struct vio_disk_desc* FUNC3 (struct vio_dring_state*,size_t) ; 
 void* FUNC4 (struct vio_dring_state*,size_t) ; 

__attribute__((used)) static void FUNC5(struct vdc_port *port)
{
	struct vio_dring_state *dr = &port->vio.drings[VIO_DRIVER_TX_RING];
	u32 idx;

	for (idx = dr->cons; idx != dr->prod; idx = FUNC4(dr, idx)) {
		struct vio_disk_desc *desc = FUNC3(dr, idx);
		struct vdc_req_entry *rqe = &port->rq_arr[idx];
		struct request *req;

		FUNC1(port->vio.lp, desc->cookies, desc->ncookies);
		desc->hdr.state = VIO_DESC_FREE;
		dr->cons = FUNC4(dr, idx);

		req = rqe->req;
		if (req == NULL) {
			FUNC2(port, desc);
			continue;
		}

		rqe->req = NULL;
		FUNC0(req, false);
	}
}