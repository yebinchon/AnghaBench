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
struct grant {int /*<<< orphan*/  gref; } ;
struct blkfront_ring_info {struct blkfront_info* dev_info; } ;
struct blkfront_info {TYPE_1__* xbdev; scalar_t__ feature_persistent; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;
struct TYPE_2__ {int /*<<< orphan*/  otherend_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  GRANT_INVALID_REF ; 
 struct grant* FUNC1 (struct blkfront_ring_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct grant*,struct blkfront_info*) ; 

__attribute__((used)) static struct grant *FUNC5(grant_ref_t *gref_head,
			       unsigned long gfn,
			       struct blkfront_ring_info *rinfo)
{
	struct grant *gnt_list_entry = FUNC1(rinfo);
	struct blkfront_info *info = rinfo->dev_info;

	if (gnt_list_entry->gref != GRANT_INVALID_REF)
		return gnt_list_entry;

	/* Assign a gref to this page */
	gnt_list_entry->gref = FUNC2(gref_head);
	FUNC0(gnt_list_entry->gref == -ENOSPC);
	if (info->feature_persistent)
		FUNC4(gnt_list_entry, info);
	else {
		/* Grant access to the GFN passed by the caller */
		FUNC3(gnt_list_entry->gref,
						info->xbdev->otherend_id,
						gfn, 0);
	}

	return gnt_list_entry;
}