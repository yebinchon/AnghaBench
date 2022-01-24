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
struct nullb_device {scalar_t__ queue_mode; int /*<<< orphan*/ * nullb; int /*<<< orphan*/  flags; } ;
struct nullb {struct nullb_device* dev; int /*<<< orphan*/  disk; int /*<<< orphan*/ * tag_set; int /*<<< orphan*/  __tag_set; int /*<<< orphan*/  q; int /*<<< orphan*/  cur_bytes; int /*<<< orphan*/  bw_timer; int /*<<< orphan*/  list; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  LONG_MAX ; 
 int /*<<< orphan*/  NULLB_DEV_FL_THROTTLED ; 
 scalar_t__ NULL_Q_MQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nullb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nullb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct nullb*) ; 
 int /*<<< orphan*/  FUNC10 (struct nullb_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nullb*) ; 
 int /*<<< orphan*/  nullb_indexes ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct nullb *nullb)
{
	struct nullb_device *dev = nullb->dev;

	FUNC6(&nullb_indexes, nullb->index);

	FUNC8(&nullb->list);

	FUNC4(nullb->disk);

	if (FUNC13(NULLB_DEV_FL_THROTTLED, &nullb->dev->flags)) {
		FUNC5(&nullb->bw_timer);
		FUNC0(&nullb->cur_bytes, LONG_MAX);
		FUNC11(nullb);
	}

	FUNC1(nullb->q);
	if (dev->queue_mode == NULL_Q_MQ &&
	    nullb->tag_set == &nullb->__tag_set)
		FUNC2(nullb->tag_set);
	FUNC12(nullb->disk);
	FUNC3(nullb);
	if (FUNC9(nullb))
		FUNC10(nullb->dev, true);
	FUNC7(nullb);
	dev->nullb = NULL;
}