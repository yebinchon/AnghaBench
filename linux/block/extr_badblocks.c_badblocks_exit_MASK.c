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
struct badblocks {int /*<<< orphan*/ * page; scalar_t__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct badblocks *bb)
{
	if (!bb)
		return;
	if (bb->dev)
		FUNC0(bb->dev, bb->page);
	else
		FUNC1(bb->page);
	bb->page = NULL;
}