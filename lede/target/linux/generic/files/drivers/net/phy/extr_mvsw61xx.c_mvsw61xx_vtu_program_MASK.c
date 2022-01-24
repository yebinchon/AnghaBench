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
typedef  int u16 ;
struct switch_dev {int vlans; } ;
struct mvsw61xx_state {TYPE_1__* vlans; } ;
struct TYPE_2__ {scalar_t__ mask; int vid; int port_based; int port_sstate; int port_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MV_VTUOP_INPROGRESS ; 
 int MV_VTUOP_LOAD ; 
 int MV_VTUOP_PURGE ; 
 int MV_VTUOP_STULOAD ; 
 int MV_VTU_VID_VALID ; 
 int /*<<< orphan*/  VTU_DATA1 ; 
 int /*<<< orphan*/  VTU_DATA2 ; 
 int /*<<< orphan*/  VTU_DATA3 ; 
 int /*<<< orphan*/  VTU_FID ; 
 int /*<<< orphan*/  VTU_OP ; 
 int /*<<< orphan*/  VTU_SID ; 
 int /*<<< orphan*/  VTU_VID ; 
 struct mvsw61xx_state* FUNC1 (struct switch_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct switch_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct switch_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct switch_dev *dev)
{
	struct mvsw61xx_state *state = FUNC1(dev);
	u16 v1, v2, s1, s2;
	int i;

	/* Flush */
	FUNC2(dev, FUNC0(VTU_OP),
			MV_VTUOP_INPROGRESS, 0);
	FUNC3(dev, FUNC0(VTU_OP),
			MV_VTUOP_INPROGRESS | MV_VTUOP_PURGE);

	/* Write VLAN table */
	for (i = 1; i < dev->vlans; i++) {
		if (state->vlans[i].mask == 0 ||
				state->vlans[i].vid == 0 ||
				state->vlans[i].port_based == true)
			continue;

		FUNC2(dev, FUNC0(VTU_OP),
				MV_VTUOP_INPROGRESS, 0);

		/* Write per-VLAN port state into STU */
		s1 = (u16) (state->vlans[i].port_sstate & 0xffff);
		s2 = (u16) ((state->vlans[i].port_sstate >> 16) & 0xffff);

		FUNC3(dev, FUNC0(VTU_VID), MV_VTU_VID_VALID);
		FUNC3(dev, FUNC0(VTU_SID), i);
		FUNC3(dev, FUNC0(VTU_DATA1), s1);
		FUNC3(dev, FUNC0(VTU_DATA2), s2);
		FUNC3(dev, FUNC0(VTU_DATA3), 0);

		FUNC3(dev, FUNC0(VTU_OP),
				MV_VTUOP_INPROGRESS | MV_VTUOP_STULOAD);
		FUNC2(dev, FUNC0(VTU_OP),
				MV_VTUOP_INPROGRESS, 0);

		/* Write VLAN information into VTU */
		v1 = (u16) (state->vlans[i].port_mode & 0xffff);
		v2 = (u16) ((state->vlans[i].port_mode >> 16) & 0xffff);

		FUNC3(dev, FUNC0(VTU_VID),
				MV_VTU_VID_VALID | state->vlans[i].vid);
		FUNC3(dev, FUNC0(VTU_SID), i);
		FUNC3(dev, FUNC0(VTU_FID), i);
		FUNC3(dev, FUNC0(VTU_DATA1), v1);
		FUNC3(dev, FUNC0(VTU_DATA2), v2);
		FUNC3(dev, FUNC0(VTU_DATA3), 0);

		FUNC3(dev, FUNC0(VTU_OP),
				MV_VTUOP_INPROGRESS | MV_VTUOP_LOAD);
		FUNC2(dev, FUNC0(VTU_OP),
				MV_VTUOP_INPROGRESS, 0);
	}

	return 0;
}