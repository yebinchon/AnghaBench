#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t git_object_t ;
struct TYPE_5__ {size_t type; } ;
struct TYPE_6__ {TYPE_1__ cached; } ;
typedef  TYPE_2__ git_object ;
struct TYPE_7__ {int /*<<< orphan*/  (* free ) (void*) ;} ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_3__* git_objects_table ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

void FUNC3(void *obj)
{
	git_object_t type = ((git_object *)obj)->cached.type;

	if (type < 0 || ((size_t)type) >= FUNC0(git_objects_table) ||
		!git_objects_table[type].free)
		FUNC1(obj);
	else
		git_objects_table[type].free(obj);
}