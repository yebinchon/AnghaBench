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
struct bsg_device {int /*<<< orphan*/  dev_list; int /*<<< orphan*/  max_queue; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSG_DEFAULT_CMDS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bsg_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct bsg_device *FUNC4(void)
{
	struct bsg_device *bd;

	bd = FUNC1(sizeof(struct bsg_device), GFP_KERNEL);
	if (FUNC3(!bd))
		return NULL;

	FUNC2(&bd->lock);
	bd->max_queue = BSG_DEFAULT_CMDS;
	FUNC0(&bd->dev_list);
	return bd;
}