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
struct vio_rdx {int dummy; } ;
struct vio_driver_state {int hs_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HS ; 
 int VIO_HS_GOT_RDX_ACK ; 
 int VIO_HS_SENT_RDX ; 
 int FUNC0 (struct vio_driver_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct vio_driver_state *vio, struct vio_rdx *pkt)
{
	FUNC1(HS, "GOT RDX ACK\n");

	if (!(vio->hs_state & VIO_HS_SENT_RDX))
		return FUNC0(vio);

	vio->hs_state |= VIO_HS_GOT_RDX_ACK;
	return 0;
}