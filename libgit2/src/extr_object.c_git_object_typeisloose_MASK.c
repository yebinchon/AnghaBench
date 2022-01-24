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
typedef  size_t git_object_t ;
struct TYPE_3__ {scalar_t__ size; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* git_objects_table ; 

int FUNC1(git_object_t type)
{
	if (type < 0 || ((size_t) type) >= FUNC0(git_objects_table))
		return 0;

	return (git_objects_table[type].size > 0) ? 1 : 0;
}