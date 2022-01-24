#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct repository {TYPE_1__* objects; } ;
struct object_directory {struct object_directory* next; } ;
struct TYPE_2__ {scalar_t__ packed_git_initialized; scalar_t__ approximate_object_count_valid; struct object_directory* odb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_directory*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*) ; 

void FUNC2(struct repository *r)
{
	struct object_directory *odb;

	for (odb = r->objects->odb; odb; odb = odb->next)
		FUNC0(odb);

	r->objects->approximate_object_count_valid = 0;
	r->objects->packed_git_initialized = 0;
	FUNC1(r);
}