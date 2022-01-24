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
typedef  int u8 ;
struct vblk_dgrp {int /*<<< orphan*/  disk_id; } ;
struct TYPE_2__ {struct vblk_dgrp dgrp; } ;
struct vblk {TYPE_1__ vblk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const VBLK_FLAG_DGR3_IDS ; 
 scalar_t__ VBLK_SIZE_DGR3 ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int const*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int const*,int,int,int) ; 

__attribute__((used)) static int FUNC4 (const u8 *buffer, int buflen, struct vblk *vb)
{
	int r_objid, r_name, r_diskid, r_id1, r_id2, len;
	struct vblk_dgrp *dgrp;

	FUNC0 (!buffer || !vb);

	r_objid  = FUNC3 (buffer, buflen, 0x18, 0);
	r_name   = FUNC3 (buffer, buflen, 0x18, r_objid);
	r_diskid = FUNC3 (buffer, buflen, 0x18, r_name);

	if (buffer[0x12] & VBLK_FLAG_DGR3_IDS) {
		r_id1 = FUNC3 (buffer, buflen, 0x24, r_diskid);
		r_id2 = FUNC3 (buffer, buflen, 0x24, r_id1);
		len = r_id2;
	} else {
		r_id1 = 0;
		r_id2 = 0;
		len = r_diskid;
	}
	if (len < 0)
		return false;

	len += VBLK_SIZE_DGR3;
	if (len != FUNC1(buffer + 0x14))
		return false;

	dgrp = &vb->vblk.dgrp;
	FUNC2 (buffer + 0x18 + r_name, dgrp->disk_id,
		sizeof (dgrp->disk_id));
	return true;
}