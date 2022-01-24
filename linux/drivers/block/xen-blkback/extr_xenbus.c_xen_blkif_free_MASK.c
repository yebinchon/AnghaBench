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
struct xen_blkif {TYPE_1__* be; int /*<<< orphan*/  vbd; } ;
struct TYPE_2__ {struct TYPE_2__* mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct xen_blkif*) ; 
 int /*<<< orphan*/  xen_blkif_cachep ; 
 int /*<<< orphan*/  FUNC3 (struct xen_blkif*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct xen_blkif *blkif)
{
	FUNC0(FUNC3(blkif));
	FUNC4(&blkif->vbd);
	FUNC1(blkif->be->mode);
	FUNC1(blkif->be);

	/* Make sure everything is drained before shutting down */
	FUNC2(xen_blkif_cachep, blkif);
}