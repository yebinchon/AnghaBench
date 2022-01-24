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
struct cardinfo {int /*<<< orphan*/  lock; } ;
struct blk_plug_cb {struct cardinfo* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cardinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_plug_cb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct blk_plug_cb *cb, bool from_schedule)
{
	struct cardinfo *card = cb->data;

	FUNC2(&card->lock);
	FUNC0(card);
	FUNC3(&card->lock);
	FUNC1(cb);
}