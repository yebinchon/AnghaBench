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
struct blkfront_ring_info {TYPE_1__* dev_info; int /*<<< orphan*/  ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct blkfront_ring_info *rinfo)
{
	if (!FUNC0(&rinfo->ring))
		FUNC1(rinfo->dev_info->rq, true);
}