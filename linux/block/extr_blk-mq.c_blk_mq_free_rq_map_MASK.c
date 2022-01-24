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
struct blk_mq_tags {int /*<<< orphan*/ * static_rqs; int /*<<< orphan*/ * rqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blk_mq_tags*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct blk_mq_tags *tags)
{
	FUNC1(tags->rqs);
	tags->rqs = NULL;
	FUNC1(tags->static_rqs);
	tags->static_rqs = NULL;

	FUNC0(tags);
}