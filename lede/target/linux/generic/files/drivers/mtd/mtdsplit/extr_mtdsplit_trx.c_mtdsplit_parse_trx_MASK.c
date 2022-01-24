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
struct trx_header {scalar_t__ magic; size_t* offset; int /*<<< orphan*/  len; } ;
struct mtd_partition {size_t offset; size_t size; int /*<<< orphan*/  name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {size_t size; int /*<<< orphan*/  name; scalar_t__ erasesize; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERNEL_PART_NAME ; 
 int /*<<< orphan*/  ROOTFS_PART_NAME ; 
 int /*<<< orphan*/  TRX_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_partition*) ; 
 struct mtd_partition* FUNC2 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (struct mtd_info*,size_t,struct trx_header*) ; 

__attribute__((used)) static int
FUNC6(struct mtd_info *master,
		   const struct mtd_partition **pparts,
		   struct mtd_part_parser_data *data)
{
	struct mtd_partition *parts;
	struct trx_header hdr;
	int nr_parts;
	size_t offset;
	size_t trx_offset;
	size_t trx_size = 0;
	size_t rootfs_offset;
	size_t rootfs_size = 0;
	int ret;

	nr_parts = 2;
	parts = FUNC2(nr_parts * sizeof(*parts), GFP_KERNEL);
	if (!parts)
		return -ENOMEM;

	/* find trx image on erase block boundaries */
	for (offset = 0; offset < master->size; offset += master->erasesize) {
		trx_size = 0;

		ret = FUNC5(master, offset, &hdr);
		if (ret)
			continue;

		if (hdr.magic != FUNC0(TRX_MAGIC)) {
			FUNC4("no valid trx header found in \"%s\" at offset %llx\n",
				 master->name, (unsigned long long) offset);
			continue;
		}

		trx_size = FUNC3(hdr.len);
		if ((offset + trx_size) > master->size) {
			FUNC4("trx image exceeds MTD device \"%s\"\n",
				 master->name);
			continue;
		}
		break;
	}

	if (trx_size == 0) {
		FUNC4("no trx header found in \"%s\"\n", master->name);
		ret = -ENODEV;
		goto err;
	}

	trx_offset = offset + hdr.offset[0];
	rootfs_offset = offset + hdr.offset[1];
	rootfs_size = master->size - rootfs_offset;
	trx_size = rootfs_offset - trx_offset;

	if (rootfs_size == 0) {
		FUNC4("no rootfs found in \"%s\"\n", master->name);
		ret = -ENODEV;
		goto err;
	}

	parts[0].name = KERNEL_PART_NAME;
	parts[0].offset = trx_offset;
	parts[0].size = trx_size;

	parts[1].name = ROOTFS_PART_NAME;
	parts[1].offset = rootfs_offset;
	parts[1].size = rootfs_size;

	*pparts = parts;
	return nr_parts;

err:
	FUNC1(parts);
	return ret;
}