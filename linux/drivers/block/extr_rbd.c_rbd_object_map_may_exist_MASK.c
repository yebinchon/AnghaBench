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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct rbd_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ OBJECT_NONEXISTENT ; 
 scalar_t__ FUNC0 (struct rbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rbd_device*) ; 

__attribute__((used)) static bool FUNC2(struct rbd_device *rbd_dev, u64 objno)
{
	u8 state;

	/* fall back to default logic if object map is disabled or invalid */
	if (!FUNC1(rbd_dev))
		return true;

	state = FUNC0(rbd_dev, objno);
	return state != OBJECT_NONEXISTENT;
}