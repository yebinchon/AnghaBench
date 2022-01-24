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
struct xen_blkif {int /*<<< orphan*/  free_work; int /*<<< orphan*/  drain_complete; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  domid; } ;
typedef  int /*<<< orphan*/  domid_t ;

/* Variables and functions */
 scalar_t__ BLKIF_MAX_INDIRECT_PAGES_PER_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct xen_blkif* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_INDIRECT_PAGES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct xen_blkif* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xen_blkif_cachep ; 
 int /*<<< orphan*/  xen_blkif_deferred_free ; 

__attribute__((used)) static struct xen_blkif *FUNC6(domid_t domid)
{
	struct xen_blkif *blkif;

	FUNC0(MAX_INDIRECT_PAGES > BLKIF_MAX_INDIRECT_PAGES_PER_REQUEST);

	blkif = FUNC5(xen_blkif_cachep, GFP_KERNEL);
	if (!blkif)
		return FUNC1(-ENOMEM);

	blkif->domid = domid;
	FUNC3(&blkif->refcnt, 1);
	FUNC4(&blkif->drain_complete);
	FUNC2(&blkif->free_work, xen_blkif_deferred_free);

	return blkif;
}