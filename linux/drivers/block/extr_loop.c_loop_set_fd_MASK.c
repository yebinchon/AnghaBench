#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct loop_device {scalar_t__ lo_state; int use_dio; int lo_flags; int old_gfp_mask; int /*<<< orphan*/  lo_disk; int /*<<< orphan*/  lo_queue; struct file* lo_backing_file; scalar_t__ lo_sizelimit; int /*<<< orphan*/ * ioctl; int /*<<< orphan*/ * transfer; struct block_device* lo_device; } ;
struct inode {int /*<<< orphan*/  i_bdev; int /*<<< orphan*/  i_mode; TYPE_2__* i_sb; } ;
struct file {int f_mode; TYPE_1__* f_op; struct address_space* f_mapping; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ sector_t ;
typedef  int loff_t ;
typedef  int fmode_t ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {scalar_t__ s_bdev; } ;
struct TYPE_4__ {scalar_t__ fsync; int /*<<< orphan*/  write_iter; } ;

/* Variables and functions */
 int EBADF ; 
 int EBUSY ; 
 int EFBIG ; 
 int FMODE_EXCL ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct block_device*) ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int LO_FLAGS_PARTSCAN ; 
 int LO_FLAGS_READ_ONLY ; 
 scalar_t__ Lo_bound ; 
 scalar_t__ Lo_unbound ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct block_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int __GFP_FS ; 
 int __GFP_IO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*,struct block_device*,int (*) (struct loop_device*,int,struct block_device*,unsigned int)) ; 
 int /*<<< orphan*/  FUNC5 (struct block_device*,int) ; 
 struct block_device* FUNC6 (struct block_device*,int (*) (struct loop_device*,int,struct block_device*,unsigned int)) ; 
 unsigned short FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ) ; 
 struct file* FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct file*) ; 
 int FUNC17 (struct loop_device*,struct file*) ; 
 scalar_t__ FUNC18 (struct file*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loop_ctl_mutex ; 
 int FUNC20 (struct loop_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct loop_device*,struct block_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct loop_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct loop_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct loop_device*) ; 
 int FUNC25 (struct file*,struct block_device*) ; 
 int FUNC26 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC27 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ part_shift ; 
 int /*<<< orphan*/  FUNC31 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (struct block_device*,int) ; 

__attribute__((used)) static int FUNC34(struct loop_device *lo, fmode_t mode,
		       struct block_device *bdev, unsigned int arg)
{
	struct file	*file;
	struct inode	*inode;
	struct address_space *mapping;
	struct block_device *claimed_bdev = NULL;
	int		lo_flags = 0;
	int		error;
	loff_t		size;
	bool		partscan;

	/* This is safe, since we have a reference from open(). */
	FUNC3(THIS_MODULE);

	error = -EBADF;
	file = FUNC15(arg);
	if (!file)
		goto out;

	/*
	 * If we don't hold exclusive handle for the device, upgrade to it
	 * here to avoid changing device under exclusive owner.
	 */
	if (!(mode & FMODE_EXCL)) {
		claimed_bdev = FUNC6(bdev, loop_set_fd);
		if (FUNC0(claimed_bdev)) {
			error = FUNC1(claimed_bdev);
			goto out_putf;
		}
	}

	error = FUNC29(&loop_ctl_mutex);
	if (error)
		goto out_bdev;

	error = -EBUSY;
	if (lo->lo_state != Lo_unbound)
		goto out_unlock;

	error = FUNC25(file, bdev);
	if (error)
		goto out_unlock;

	mapping = file->f_mapping;
	inode = mapping->host;

	if (!(file->f_mode & FMODE_WRITE) || !(mode & FMODE_WRITE) ||
	    !file->f_op->write_iter)
		lo_flags |= LO_FLAGS_READ_ONLY;

	error = -EFBIG;
	size = FUNC17(lo, file);
	if ((loff_t)(sector_t)size != size)
		goto out_unlock;
	error = FUNC20(lo);
	if (error)
		goto out_unlock;

	error = 0;

	FUNC33(bdev, (lo_flags & LO_FLAGS_READ_ONLY) != 0);

	lo->use_dio = false;
	lo->lo_device = bdev;
	lo->lo_flags = lo_flags;
	lo->lo_backing_file = file;
	lo->transfer = NULL;
	lo->ioctl = NULL;
	lo->lo_sizelimit = 0;
	lo->old_gfp_mask = FUNC26(mapping);
	FUNC27(mapping, lo->old_gfp_mask & ~(__GFP_IO|__GFP_FS));

	if (!(lo_flags & LO_FLAGS_READ_ONLY) && file->f_op->fsync)
		FUNC12(lo->lo_queue, true, false);

	if (FUNC18(lo->lo_backing_file) && inode->i_sb->s_bdev) {
		/* In case of direct I/O, match underlying block size */
		unsigned short bsize = FUNC7(
			inode->i_sb->s_bdev);

		FUNC10(lo->lo_queue, bsize);
		FUNC11(lo->lo_queue, bsize);
		FUNC9(lo->lo_queue, bsize);
	}

	FUNC24(lo);
	FUNC23(lo);
	FUNC32(lo->lo_disk, size);
	FUNC5(bdev, size << 9);
	FUNC22(lo);
	/* let user-space know about the new size */
	FUNC19(&FUNC14(bdev->bd_disk)->kobj, KOBJ_CHANGE);

	FUNC31(bdev, FUNC2(inode->i_mode) ?
		      FUNC13(inode->i_bdev) : PAGE_SIZE);

	lo->lo_state = Lo_bound;
	if (part_shift)
		lo->lo_flags |= LO_FLAGS_PARTSCAN;
	partscan = lo->lo_flags & LO_FLAGS_PARTSCAN;

	/* Grab the block_device to prevent its destruction after we
	 * put /dev/loopXX inode. Later in __loop_clr_fd() we bdput(bdev).
	 */
	FUNC8(bdev);
	FUNC30(&loop_ctl_mutex);
	if (partscan)
		FUNC21(lo, bdev);
	if (claimed_bdev)
		FUNC4(bdev, claimed_bdev, loop_set_fd);
	return 0;

out_unlock:
	FUNC30(&loop_ctl_mutex);
out_bdev:
	if (claimed_bdev)
		FUNC4(bdev, claimed_bdev, loop_set_fd);
out_putf:
	FUNC16(file);
out:
	/* This is safe: open() is still holding a reference. */
	FUNC28(THIS_MODULE);
	return error;
}