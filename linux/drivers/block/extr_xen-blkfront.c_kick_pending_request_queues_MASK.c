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
struct blkfront_ring_info {int /*<<< orphan*/  ring_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blkfront_ring_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct blkfront_ring_info *rinfo)
{
	unsigned long flags;

	FUNC1(&rinfo->ring_lock, flags);
	FUNC0(rinfo);
	FUNC2(&rinfo->ring_lock, flags);
}