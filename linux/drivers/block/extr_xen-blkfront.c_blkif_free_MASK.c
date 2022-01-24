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
struct blkfront_info {unsigned int nr_rings; int /*<<< orphan*/ * rinfo; scalar_t__ rq; int /*<<< orphan*/  connected; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKIF_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  BLKIF_STATE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct blkfront_info *info, int suspend)
{
	unsigned int i;

	/* Prevent new requests being issued until we fix things up. */
	info->connected = suspend ?
		BLKIF_STATE_SUSPENDED : BLKIF_STATE_DISCONNECTED;
	/* No more blkif_request(). */
	if (info->rq)
		FUNC0(info->rq);

	for (i = 0; i < info->nr_rings; i++)
		FUNC1(&info->rinfo[i]);

	FUNC2(info->rinfo);
	info->rinfo = NULL;
	info->nr_rings = 0;
}