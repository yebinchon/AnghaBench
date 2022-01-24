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
struct blk_queue_stats {int enable_accounting; int /*<<< orphan*/  lock; int /*<<< orphan*/  callbacks; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct blk_queue_stats* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct blk_queue_stats *FUNC3(void)
{
	struct blk_queue_stats *stats;

	stats = FUNC1(sizeof(*stats), GFP_KERNEL);
	if (!stats)
		return NULL;

	FUNC0(&stats->callbacks);
	FUNC2(&stats->lock);
	stats->enable_accounting = false;

	return stats;
}