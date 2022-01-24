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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct rbd_device {int /*<<< orphan*/  object_map_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC3(struct rbd_device *rbd_dev, u64 objno)
{
	u8 state;

	FUNC1(&rbd_dev->object_map_lock);
	state = FUNC0(rbd_dev, objno);
	FUNC2(&rbd_dev->object_map_lock);
	return state;
}