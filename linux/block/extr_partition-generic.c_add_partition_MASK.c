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
struct partition_meta_info {int dummy; } ;
struct hd_struct {int partno; int /*<<< orphan*/  holder_dir; struct partition_meta_info* info; int /*<<< orphan*/  policy; void* nr_sects; int /*<<< orphan*/  discard_alignment; int /*<<< orphan*/  alignment_offset; void* start_sect; int /*<<< orphan*/  nr_sects_seq; } ;
struct gendisk {TYPE_1__* queue; int /*<<< orphan*/  part_tbl; } ;
struct disk_part_tbl {scalar_t__* part; } ;
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  devt; struct device* parent; int /*<<< orphan*/ * type; int /*<<< orphan*/ * class; } ;
typedef  void* sector_t ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int /*<<< orphan*/  limits; } ;

/* Variables and functions */
 int ADDPART_FLAG_WHOLEDISK ; 
 int EBUSY ; 
 int ENOMEM ; 
 struct hd_struct* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct partition_meta_info* FUNC2 (struct gendisk*) ; 
 int FUNC3 (struct hd_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  block_class ; 
 int /*<<< orphan*/  dev_attr_whole_disk ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 char* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int) ; 
 int FUNC8 (struct device*) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct gendisk*,int) ; 
 struct device* FUNC14 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC15 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC17 (struct gendisk*) ; 
 int FUNC18 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC19 (struct hd_struct*) ; 
 scalar_t__ FUNC20 (char const) ; 
 int /*<<< orphan*/  FUNC21 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hd_struct* FUNC25 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct partition_meta_info*,struct partition_meta_info*,int) ; 
 struct device* FUNC27 (struct hd_struct*) ; 
 int /*<<< orphan*/  part_type ; 
 int /*<<< orphan*/  FUNC28 (struct device*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__,struct hd_struct*) ; 
 struct disk_part_tbl* FUNC32 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int FUNC34 (char const*) ; 

struct hd_struct *FUNC35(struct gendisk *disk, int partno,
				sector_t start, sector_t len, int flags,
				struct partition_meta_info *info)
{
	struct hd_struct *p;
	dev_t devt = FUNC1(0, 0);
	struct device *ddev = FUNC14(disk);
	struct device *pdev;
	struct disk_part_tbl *ptbl;
	const char *dname;
	int err;

	err = FUNC13(disk, partno);
	if (err)
		return FUNC0(err);
	ptbl = FUNC32(disk->part_tbl, 1);

	if (ptbl->part[partno])
		return FUNC0(-EBUSY);

	p = FUNC25(sizeof(*p), GFP_KERNEL);
	if (!p)
		return FUNC0(-EBUSY);

	if (!FUNC19(p)) {
		err = -ENOMEM;
		goto out_free;
	}

	FUNC33(&p->nr_sects_seq);
	pdev = FUNC27(p);

	p->start_sect = start;
	p->alignment_offset =
		FUNC29(&disk->queue->limits, start);
	p->discard_alignment =
		FUNC30(&disk->queue->limits, start);
	p->nr_sects = len;
	p->partno = partno;
	p->policy = FUNC17(disk);

	if (info) {
		struct partition_meta_info *pinfo = FUNC2(disk);
		if (!pinfo) {
			err = -ENOMEM;
			goto out_free_stats;
		}
		FUNC26(pinfo, info, sizeof(*info));
		p->info = pinfo;
	}

	dname = FUNC5(ddev);
	if (FUNC20(dname[FUNC34(dname) - 1]))
		FUNC6(pdev, "%sp%d", dname, partno);
	else
		FUNC6(pdev, "%s%d", dname, partno);

	FUNC11(pdev);
	pdev->class = &block_class;
	pdev->type = &part_type;
	pdev->parent = ddev;

	err = FUNC3(p, &devt);
	if (err)
		goto out_free_info;
	pdev->devt = devt;

	/* delay uevent until 'holders' subdir is created */
	FUNC7(pdev, 1);
	err = FUNC8(pdev);
	if (err)
		goto out_put;

	err = -ENOMEM;
	p->holder_dir = FUNC22("holders", &pdev->kobj);
	if (!p->holder_dir)
		goto out_del;

	FUNC7(pdev, 0);
	if (flags & ADDPART_FLAG_WHOLEDISK) {
		err = FUNC9(pdev, &dev_attr_whole_disk);
		if (err)
			goto out_del;
	}

	err = FUNC18(p);
	if (err) {
		if (flags & ADDPART_FLAG_WHOLEDISK)
			goto out_remove_file;
		goto out_del;
	}

	/* everything is up and running, commence */
	FUNC31(ptbl->part[partno], p);

	/* suppress uevent if the disk suppresses it */
	if (!FUNC4(ddev))
		FUNC24(&pdev->kobj, KOBJ_ADD);
	return p;

out_free_info:
	FUNC15(p);
out_free_stats:
	FUNC16(p);
out_free:
	FUNC21(p);
	return FUNC0(err);
out_remove_file:
	FUNC12(pdev, &dev_attr_whole_disk);
out_del:
	FUNC23(p->holder_dir);
	FUNC10(pdev);
out_put:
	FUNC28(pdev);
	return FUNC0(err);
}