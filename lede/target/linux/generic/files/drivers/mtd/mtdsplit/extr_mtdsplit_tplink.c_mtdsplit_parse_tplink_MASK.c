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
struct TYPE_4__ {int /*<<< orphan*/  rootfs_ofs; int /*<<< orphan*/  kernel_len; int /*<<< orphan*/  kernel_ofs; } ;
struct TYPE_3__ {int /*<<< orphan*/  rootfs_ofs; int /*<<< orphan*/  kernel_len; int /*<<< orphan*/  kernel_ofs; } ;
struct tplink_fw_header {TYPE_2__ v2; TYPE_1__ v1; int /*<<< orphan*/  version; } ;
struct mtd_partition {size_t offset; size_t size; int /*<<< orphan*/  name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {size_t size; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERNEL_PART_NAME ; 
 int /*<<< orphan*/  ROOTFS_PART_NAME ; 
 int /*<<< orphan*/  TPLINK_MIN_ROOTFS_OFFS ; 
 int TPLINK_NR_PARTS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtd_partition* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mtd_info*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mtd_info*,int /*<<< orphan*/ ,size_t,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mtd_info*,int /*<<< orphan*/ ,size_t,size_t*,void*) ; 

__attribute__((used)) static int FUNC6(struct mtd_info *master,
				 const struct mtd_partition **pparts,
				 struct mtd_part_parser_data *data)
{
	struct tplink_fw_header hdr;
	size_t hdr_len, retlen, kernel_size;
	size_t rootfs_offset;
	struct mtd_partition *parts;
	int err;

	hdr_len = sizeof(hdr);
	err = FUNC5(master, 0, hdr_len, &retlen, (void *) &hdr);
	if (err)
		return err;

	if (retlen != hdr_len)
		return -EIO;

	switch (FUNC2(hdr.version)) {
	case 1:
		if (FUNC0(hdr.v1.kernel_ofs) != sizeof(hdr))
			return -EINVAL;

		kernel_size = sizeof(hdr) + FUNC0(hdr.v1.kernel_len);
		rootfs_offset = FUNC0(hdr.v1.rootfs_ofs);
		break;
	case 2:
	case 3:
		if (FUNC0(hdr.v2.kernel_ofs) != sizeof(hdr))
			return -EINVAL;

		kernel_size = sizeof(hdr) + FUNC0(hdr.v2.kernel_len);
		rootfs_offset = FUNC0(hdr.v2.rootfs_ofs);
		break;
	default:
		return -EINVAL;
	}

	if (kernel_size > master->size)
		return -EINVAL;

	/* Find the rootfs */
	err = FUNC3(master, rootfs_offset, NULL);
	if (err) {
		/*
		 * The size in the header might cover the rootfs as well.
		 * Start the search from an arbitrary offset.
		 */
		err = FUNC4(master, TPLINK_MIN_ROOTFS_OFFS,
					   master->size, &rootfs_offset, NULL);
		if (err)
			return err;
	}

	parts = FUNC1(TPLINK_NR_PARTS * sizeof(*parts), GFP_KERNEL);
	if (!parts)
		return -ENOMEM;

	parts[0].name = KERNEL_PART_NAME;
	parts[0].offset = 0;
	parts[0].size = kernel_size;

	parts[1].name = ROOTFS_PART_NAME;
	parts[1].offset = rootfs_offset;
	parts[1].size = master->size - rootfs_offset;

	*pparts = parts;
	return TPLINK_NR_PARTS;
}