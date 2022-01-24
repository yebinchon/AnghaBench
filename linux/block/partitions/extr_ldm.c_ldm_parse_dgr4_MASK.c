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
typedef  int u8 ;
struct vblk {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const VBLK_FLAG_DGR4_IDS ; 
 scalar_t__ VBLK_SIZE_DGR4 ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int const*,char*,int) ; 
 int FUNC3 (int const*,int,int,int) ; 

__attribute__((used)) static bool FUNC4 (const u8 *buffer, int buflen, struct vblk *vb)
{
	char buf[64];
	int r_objid, r_name, r_id1, r_id2, len;

	FUNC0 (!buffer || !vb);

	r_objid  = FUNC3 (buffer, buflen, 0x18, 0);
	r_name   = FUNC3 (buffer, buflen, 0x18, r_objid);

	if (buffer[0x12] & VBLK_FLAG_DGR4_IDS) {
		r_id1 = FUNC3 (buffer, buflen, 0x44, r_name);
		r_id2 = FUNC3 (buffer, buflen, 0x44, r_id1);
		len = r_id2;
	} else {
		r_id1 = 0;
		r_id2 = 0;
		len = r_name;
	}
	if (len < 0)
		return false;

	len += VBLK_SIZE_DGR4;
	if (len != FUNC1(buffer + 0x14))
		return false;

	FUNC2 (buffer + 0x18 + r_objid, buf, sizeof (buf));
	return true;
}