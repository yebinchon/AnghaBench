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
struct vio_driver_state {int hs_state; int dr_state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* handle_attr ) (struct vio_driver_state*,void*) ;} ;

/* Variables and functions */
 int VIO_DR_STATE_TXREQ ; 
 int VIO_HS_GOTVERS ; 
 int VIO_HS_GOT_ATTR ; 
 int VIO_HS_SENT_DREG ; 
 int FUNC0 (struct vio_driver_state*) ; 
 scalar_t__ FUNC1 (struct vio_driver_state*) ; 
 int FUNC2 (struct vio_driver_state*,void*) ; 

__attribute__((used)) static int FUNC3(struct vio_driver_state *vio, void *pkt)
{
	int err;

	if (!(vio->hs_state & VIO_HS_GOTVERS))
		return FUNC0(vio);

	if (!vio->ops)
		return 0;

	err = vio->ops->handle_attr(vio, pkt);
	if (err < 0) {
		return FUNC0(vio);
	} else {
		vio->hs_state |= VIO_HS_GOT_ATTR;

		if ((vio->dr_state & VIO_DR_STATE_TXREQ) &&
		    !(vio->hs_state & VIO_HS_SENT_DREG)) {
			if (FUNC1(vio) < 0)
				return FUNC0(vio);

			vio->hs_state |= VIO_HS_SENT_DREG;
		}
	}

	return 0;
}