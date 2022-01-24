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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  u8 ;
struct vblk_disk {int /*<<< orphan*/  disk_id; } ;
struct TYPE_2__ {struct vblk_disk disk; } ;
struct vblk {TYPE_1__ vblk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VBLK_SIZE_DSK4 ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4 (const u8 *buffer, int buflen, struct vblk *vb)
{
	int r_objid, r_name, len;
	struct vblk_disk *disk;

	FUNC0 (!buffer || !vb);

	r_objid = FUNC2 (buffer, buflen, 0x18, 0);
	r_name  = FUNC2 (buffer, buflen, 0x18, r_objid);
	len     = r_name;
	if (len < 0)
		return false;

	len += VBLK_SIZE_DSK4;
	if (len != FUNC1(buffer + 0x14))
		return false;

	disk = &vb->vblk.disk;
	FUNC3(&disk->disk_id, (uuid_t *)(buffer + 0x18 + r_name));
	return true;
}