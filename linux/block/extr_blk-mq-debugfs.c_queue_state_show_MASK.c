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
struct request_queue {int /*<<< orphan*/  queue_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blk_queue_flag_name ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(void *data, struct seq_file *m)
{
	struct request_queue *q = data;

	FUNC1(m, q->queue_flags, blk_queue_flag_name,
		       FUNC0(blk_queue_flag_name));
	FUNC2(m, "\n");
	return 0;
}