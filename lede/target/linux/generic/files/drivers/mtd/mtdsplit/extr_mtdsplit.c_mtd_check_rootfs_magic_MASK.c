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
typedef  int u32 ;
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  magic ;
typedef  enum mtdsplit_part_type { ____Placeholder_mtdsplit_part_type } mtdsplit_part_type ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int MTDSPLIT_PART_TYPE_JFFS2 ; 
 int MTDSPLIT_PART_TYPE_SQUASHFS ; 
 int MTDSPLIT_PART_TYPE_UBI ; 
 scalar_t__ SQUASHFS_MAGIC ; 
 scalar_t__ UBI_EC_MAGIC ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct mtd_info*,size_t,int,size_t*,unsigned char*) ; 

int FUNC3(struct mtd_info *mtd, size_t offset,
			   enum mtdsplit_part_type *type)
{
	u32 magic;
	size_t retlen;
	int ret;

	ret = FUNC2(mtd, offset, sizeof(magic), &retlen,
		       (unsigned char *) &magic);
	if (ret)
		return ret;

	if (retlen != sizeof(magic))
		return -EIO;

	if (FUNC1(magic) == SQUASHFS_MAGIC) {
		if (type)
			*type = MTDSPLIT_PART_TYPE_SQUASHFS;
		return 0;
	} else if (magic == 0x19852003) {
		if (type)
			*type = MTDSPLIT_PART_TYPE_JFFS2;
		return 0;
	} else if (FUNC0(magic) == UBI_EC_MAGIC) {
		if (type)
			*type = MTDSPLIT_PART_TYPE_UBI;
		return 0;
	}

	return -EINVAL;
}