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
struct wrgg03_header {int /*<<< orphan*/  magic1; int /*<<< orphan*/  size; } ;
struct wrg_header {int /*<<< orphan*/  size; } ;
struct mtd_partition {size_t offset; size_t size; int /*<<< orphan*/  name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {size_t size; } ;
typedef  int /*<<< orphan*/  hdr ;
typedef  enum mtdsplit_part_type { ____Placeholder_mtdsplit_part_type } mtdsplit_part_type ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERNEL_PART_NAME ; 
 int /*<<< orphan*/  ROOTFS_PART_NAME ; 
 int WRGG03_MAGIC ; 
 int /*<<< orphan*/  WRGG_MIN_ROOTFS_OFFS ; 
 int WRGG_NR_PARTS ; 
 int WRG_MAGIC ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtd_partition* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mtd_info*,int /*<<< orphan*/ ,size_t,size_t*,int*) ; 
 int FUNC4 (struct mtd_info*,int /*<<< orphan*/ ,size_t,size_t*,void*) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *master,
			       const struct mtd_partition **pparts,
			       struct mtd_part_parser_data *data)
{
	struct wrgg03_header hdr;
	size_t hdr_len, retlen, kernel_ent_size;
	size_t rootfs_offset;
	struct mtd_partition *parts;
	enum mtdsplit_part_type type;
	int err;

	hdr_len = sizeof(hdr);
	err = FUNC4(master, 0, hdr_len, &retlen, (void *) &hdr);
	if (err)
		return err;

	if (retlen != hdr_len)
		return -EIO;

	/* sanity checks */
	if (FUNC2(hdr.magic1) == WRGG03_MAGIC) {
		kernel_ent_size = hdr_len + FUNC0(hdr.size);
	} else if (FUNC2(hdr.magic1) == WRG_MAGIC) {
		kernel_ent_size = sizeof(struct wrg_header) + FUNC2(
		                  ((struct wrg_header*)&hdr)->size);
	} else {
		return -EINVAL;
	}

	if (kernel_ent_size > master->size)
		return -EINVAL;

	/*
	 * The size in the header covers the rootfs as well.
	 * Start the search from an arbitrary offset.
	 */
	err = FUNC3(master, WRGG_MIN_ROOTFS_OFFS,
				   master->size, &rootfs_offset, &type);
	if (err)
		return err;

	parts = FUNC1(WRGG_NR_PARTS * sizeof(*parts), GFP_KERNEL);
	if (!parts)
		return -ENOMEM;

	parts[0].name = KERNEL_PART_NAME;
	parts[0].offset = 0;
	parts[0].size = rootfs_offset;

	parts[1].name = ROOTFS_PART_NAME;
	parts[1].offset = rootfs_offset;
	parts[1].size = master->size - rootfs_offset;

	*pparts = parts;
	return WRGG_NR_PARTS;
}