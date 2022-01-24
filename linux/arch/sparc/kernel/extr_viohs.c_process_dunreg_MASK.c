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
struct vio_driver_state {scalar_t__ desc_buf_len; int /*<<< orphan*/ * desc_buf; int /*<<< orphan*/  dr_state; struct vio_dring_state* drings; } ;
struct vio_dring_unregister {scalar_t__ dring_ident; } ;
struct vio_dring_state {scalar_t__ ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  HS ; 
 size_t VIO_DRIVER_RX_RING ; 
 int /*<<< orphan*/  VIO_DR_STATE_RXREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vio_dring_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct vio_driver_state *vio,
			  struct vio_dring_unregister *pkt)
{
	struct vio_dring_state *dr = &vio->drings[VIO_DRIVER_RX_RING];

	FUNC2(HS, "GOT DRING_UNREG\n");

	if (pkt->dring_ident != dr->ident)
		return 0;

	vio->dr_state &= ~VIO_DR_STATE_RXREG;

	FUNC1(dr, 0, sizeof(*dr));

	FUNC0(vio->desc_buf);
	vio->desc_buf = NULL;
	vio->desc_buf_len = 0;

	return 0;
}