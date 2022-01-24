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
typedef  int u8 ;
typedef  size_t u64 ;
struct rbd_device {int* object_map; int /*<<< orphan*/  object_map_lock; } ;

/* Variables and functions */
 int OBJ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct rbd_device*,size_t,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct rbd_device *rbd_dev, u64 objno, u8 val)
{
	u64 index;
	u8 shift;
	u8 *p;

	FUNC1(&rbd_dev->object_map_lock);
	FUNC2(!(val & ~OBJ_MASK));

	FUNC0(rbd_dev, objno, &index, &shift);
	p = &rbd_dev->object_map[index];
	*p = (*p & ~(OBJ_MASK << shift)) | (val << shift);
}