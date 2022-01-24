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
struct spufs_calls {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct spufs_calls*) ; 
 scalar_t__ spufs_calls ; 

int FUNC1(struct spufs_calls *calls)
{
	if (spufs_calls)
		return -EBUSY;

	FUNC0(spufs_calls, calls);
	return 0;
}