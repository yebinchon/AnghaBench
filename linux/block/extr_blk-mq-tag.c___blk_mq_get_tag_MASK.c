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
struct sbitmap_queue {int dummy; } ;
struct blk_mq_alloc_data {int flags; scalar_t__ shallow_depth; int /*<<< orphan*/  hctx; } ;

/* Variables and functions */
 int BLK_MQ_REQ_INTERNAL ; 
 int FUNC0 (struct sbitmap_queue*) ; 
 int FUNC1 (struct sbitmap_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sbitmap_queue*) ; 

__attribute__((used)) static int FUNC3(struct blk_mq_alloc_data *data,
			    struct sbitmap_queue *bt)
{
	if (!(data->flags & BLK_MQ_REQ_INTERNAL) &&
	    !FUNC2(data->hctx, bt))
		return -1;
	if (data->shallow_depth)
		return FUNC1(bt, data->shallow_depth);
	else
		return FUNC0(bt);
}