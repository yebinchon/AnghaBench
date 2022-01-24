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
struct seq_file {int dummy; } ;
struct blk_mq_tags {int /*<<< orphan*/  breserved_tags; scalar_t__ nr_reserved_tags; int /*<<< orphan*/  bitmap_tags; int /*<<< orphan*/  active_queues; scalar_t__ nr_tags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC4(struct seq_file *m,
				     struct blk_mq_tags *tags)
{
	FUNC2(m, "nr_tags=%u\n", tags->nr_tags);
	FUNC2(m, "nr_reserved_tags=%u\n", tags->nr_reserved_tags);
	FUNC2(m, "active_queues=%d\n",
		   FUNC0(&tags->active_queues));

	FUNC3(m, "\nbitmap_tags:\n");
	FUNC1(&tags->bitmap_tags, m);

	if (tags->nr_reserved_tags) {
		FUNC3(m, "\nbreserved_tags:\n");
		FUNC1(&tags->breserved_tags, m);
	}
}