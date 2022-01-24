#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cpuidle_device {TYPE_1__** kobjs; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj_unregister; int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct cpuidle_device *device, int i)
{
	FUNC0(device->kobjs[i]);
	FUNC2(&device->kobjs[i]->kobj);
	FUNC3(&device->kobjs[i]->kobj_unregister);
	FUNC1(device->kobjs[i]);
	device->kobjs[i] = NULL;
}