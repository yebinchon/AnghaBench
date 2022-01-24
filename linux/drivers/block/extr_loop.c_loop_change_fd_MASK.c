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
struct loop_device {scalar_t__ lo_state; int lo_flags; int old_gfp_mask; int /*<<< orphan*/  lo_queue; struct file* lo_backing_file; } ;
struct file {int /*<<< orphan*/  f_mapping; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ENXIO ; 
 int LO_FLAGS_PARTSCAN ; 
 int LO_FLAGS_READ_ONLY ; 
 scalar_t__ Lo_bound ; 
 int __GFP_FS ; 
 int __GFP_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct file* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (struct loop_device*,struct file*) ; 
 int /*<<< orphan*/  loop_ctl_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct loop_device*,struct block_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct loop_device*) ; 
 int FUNC7 (struct file*,struct block_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct loop_device *lo, struct block_device *bdev,
			  unsigned int arg)
{
	struct file	*file = NULL, *old_file;
	int		error;
	bool		partscan;

	error = FUNC10(&loop_ctl_mutex);
	if (error)
		return error;
	error = -ENXIO;
	if (lo->lo_state != Lo_bound)
		goto out_err;

	/* the loop device has to be read-only */
	error = -EINVAL;
	if (!(lo->lo_flags & LO_FLAGS_READ_ONLY))
		goto out_err;

	error = -EBADF;
	file = FUNC2(arg);
	if (!file)
		goto out_err;

	error = FUNC7(file, bdev);
	if (error)
		goto out_err;

	old_file = lo->lo_backing_file;

	error = -EINVAL;

	/* size of the new backing store needs to be the same */
	if (FUNC4(lo, file) != FUNC4(lo, old_file))
		goto out_err;

	/* and ... switch */
	FUNC0(lo->lo_queue);
	FUNC9(old_file->f_mapping, lo->old_gfp_mask);
	lo->lo_backing_file = file;
	lo->old_gfp_mask = FUNC8(file->f_mapping);
	FUNC9(file->f_mapping,
			     lo->old_gfp_mask & ~(__GFP_IO|__GFP_FS));
	FUNC6(lo);
	FUNC1(lo->lo_queue);
	partscan = lo->lo_flags & LO_FLAGS_PARTSCAN;
	FUNC11(&loop_ctl_mutex);
	/*
	 * We must drop file reference outside of loop_ctl_mutex as dropping
	 * the file ref can take bd_mutex which creates circular locking
	 * dependency.
	 */
	FUNC3(old_file);
	if (partscan)
		FUNC5(lo, bdev);
	return 0;

out_err:
	FUNC11(&loop_ctl_mutex);
	if (file)
		FUNC3(file);
	return error;
}