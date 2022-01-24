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
struct request_queue {int dummy; } ;
struct blk_plug {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct blk_plug* plug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct blk_plug *FUNC3(struct request_queue *q,
					   struct bio *bio)
{
	/*
	 * For regular block devices or read operations, use the context plug
	 * which may be NULL if blk_start_plug() was not executed.
	 */
	if (!FUNC1(q) || !FUNC2(FUNC0(bio)))
		return current->plug;

	/* Zoned block device write operation case: do not plug the BIO */
	return NULL;
}