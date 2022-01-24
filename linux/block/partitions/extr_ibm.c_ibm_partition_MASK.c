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
union label_t {scalar_t__ format; int label_block; } ;
struct parsed_partitions {int /*<<< orphan*/  pp_buf; struct block_device* bdev; } ;
struct hd_geometry {scalar_t__ format; int label_block; } ;
struct block_device {int /*<<< orphan*/  bd_inode; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int loff_t ;
typedef  union label_t dasd_information2_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIODASDINFO2 ; 
 scalar_t__ DASD_FORMAT_LDL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDIO_GETGEO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct block_device*) ; 
 int FUNC1 (struct parsed_partitions*,union label_t*,int,char*,union label_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct parsed_partitions*,union label_t*,union label_t*,int,int /*<<< orphan*/ *,char*,char*,union label_t*) ; 
 int FUNC3 (struct parsed_partitions*,union label_t*,int,char*,union label_t*,int /*<<< orphan*/ ,int,union label_t*) ; 
 int FUNC4 (struct parsed_partitions*,union label_t*,int,char*,union label_t*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct block_device*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (union label_t*) ; 
 union label_t* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct parsed_partitions*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

int FUNC12(struct parsed_partitions *state)
{
	struct block_device *bdev = state->bdev;
	int blocksize, res;
	loff_t i_size, offset, size;
	dasd_information2_t *info;
	struct hd_geometry *geo;
	char type[5] = {0,};
	char name[7] = {0,};
	sector_t labelsect;
	union label_t *label;

	res = 0;
	blocksize = FUNC0(bdev);
	if (blocksize <= 0)
		goto out_exit;
	i_size = FUNC5(bdev->bd_inode);
	if (i_size == 0)
		goto out_exit;
	info = FUNC8(sizeof(dasd_information2_t), GFP_KERNEL);
	if (info == NULL)
		goto out_exit;
	geo = FUNC8(sizeof(struct hd_geometry), GFP_KERNEL);
	if (geo == NULL)
		goto out_nogeo;
	label = FUNC8(sizeof(union label_t), GFP_KERNEL);
	if (label == NULL)
		goto out_nolab;
	if (FUNC6(bdev, HDIO_GETGEO, (unsigned long)geo) != 0)
		goto out_freeall;
	if (FUNC6(bdev, BIODASDINFO2, (unsigned long)info) != 0) {
		FUNC7(info);
		info = NULL;
	}

	if (FUNC2(state, info, geo, blocksize, &labelsect, name, type,
		       label)) {
		if (!FUNC11(type, "VOL1", 4)) {
			res = FUNC4(state, geo, blocksize, name,
						   label);
		} else if (!FUNC11(type, "LNX1", 4)) {
			res = FUNC3(state, geo, blocksize, name,
						   label, labelsect, i_size,
						   info);
		} else if (!FUNC11(type, "CMS1", 4)) {
			res = FUNC1(state, geo, blocksize, name,
						   label, labelsect);
		}
	} else if (info) {
		/*
		 * ugly but needed for backward compatibility:
		 * If the block device is a DASD (i.e. BIODASDINFO2 works),
		 * then we claim it in any case, even though it has no valid
		 * label. If it has the LDL format, then we simply define a
		 * partition as if it had an LNX1 label.
		 */
		res = 1;
		if (info->format == DASD_FORMAT_LDL) {
			FUNC10(state->pp_buf, "(nonl)", PAGE_SIZE);
			size = i_size >> 9;
			offset = (info->label_block + 1) * (blocksize >> 9);
			FUNC9(state, 1, offset, size-offset);
			FUNC10(state->pp_buf, "\n", PAGE_SIZE);
		}
	} else
		res = 0;

out_freeall:
	FUNC7(label);
out_nolab:
	FUNC7(geo);
out_nogeo:
	FUNC7(info);
out_exit:
	return res;
}