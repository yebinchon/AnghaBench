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
struct request {int dummy; } ;
struct blk_mq_tags {unsigned int nr_tags; struct request** rqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 

struct request *FUNC1(struct blk_mq_tags *tags, unsigned int tag)
{
	if (tag < tags->nr_tags) {
		FUNC0(tags->rqs[tag]);
		return tags->rqs[tag];
	}

	return NULL;
}