#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_11__ {scalar_t__ dentry; } ;
struct file {TYPE_3__* private_data; TYPE_1__ f_path; } ;
struct TYPE_13__ {scalar_t__ act_entry_offset; int /*<<< orphan*/  act_entry; scalar_t__ act_page; scalar_t__ act_area; TYPE_2__* view; TYPE_4__* debug_info_org; TYPE_4__* debug_info_snap; scalar_t__ offset; } ;
typedef  TYPE_3__ file_private_info_t ;
struct TYPE_14__ {scalar_t__* debugfs_entries; TYPE_2__** views; } ;
typedef  TYPE_4__ debug_info_t ;
struct TYPE_15__ {TYPE_4__* i_private; } ;
struct TYPE_12__ {int /*<<< orphan*/  header_proc; int /*<<< orphan*/  format_proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_AREAS ; 
 int DEBUG_MAX_VIEWS ; 
 int /*<<< orphan*/  DEBUG_PROLOG_ENTRY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NO_AREAS ; 
 TYPE_4__* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  debug_mutex ; 
 TYPE_6__* FUNC3 (struct file*) ; 
 TYPE_3__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	debug_info_t *debug_info, *debug_info_snapshot;
	file_private_info_t *p_info;
	int i, rc = 0;

	FUNC5(&debug_mutex);
	debug_info = FUNC3(file)->i_private;
	/* find debug view */
	for (i = 0; i < DEBUG_MAX_VIEWS; i++) {
		if (!debug_info->views[i])
			continue;
		else if (debug_info->debugfs_entries[i] == file->f_path.dentry)
			goto found; /* found view ! */
	}
	/* no entry found */
	rc = -EINVAL;
	goto out;

found:

	/* Make snapshot of current debug areas to get it consistent.	  */
	/* To copy all the areas is only needed, if we have a view which  */
	/* formats the debug areas. */

	if (!debug_info->views[i]->format_proc && !debug_info->views[i]->header_proc)
		debug_info_snapshot = FUNC0(debug_info, NO_AREAS);
	else
		debug_info_snapshot = FUNC0(debug_info, ALL_AREAS);

	if (!debug_info_snapshot) {
		rc = -ENOMEM;
		goto out;
	}
	p_info = FUNC4(sizeof(file_private_info_t), GFP_KERNEL);
	if (!p_info) {
		FUNC1(debug_info_snapshot);
		rc = -ENOMEM;
		goto out;
	}
	p_info->offset = 0;
	p_info->debug_info_snap = debug_info_snapshot;
	p_info->debug_info_org	= debug_info;
	p_info->view = debug_info->views[i];
	p_info->act_area = 0;
	p_info->act_page = 0;
	p_info->act_entry = DEBUG_PROLOG_ENTRY;
	p_info->act_entry_offset = 0;
	file->private_data = p_info;
	FUNC2(debug_info);
	FUNC7(inode, file);
out:
	FUNC6(&debug_mutex);
	return rc;
}