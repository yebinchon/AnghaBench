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
struct object_id {int dummy; } ;
struct object_directory {struct object_directory* next; } ;
struct TYPE_7__ {TYPE_2__* objects; } ;
struct TYPE_6__ {TYPE_1__* odb; } ;
struct TYPE_5__ {struct object_directory* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct object_directory*,struct object_id const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* the_repository ; 

__attribute__((used)) static int FUNC2(const struct object_id *oid, int freshen)
{
	struct object_directory *odb;

	FUNC1(the_repository);
	for (odb = the_repository->objects->odb->next; odb; odb = odb->next) {
		if (FUNC0(odb, oid, freshen))
			return 1;
	}
	return 0;
}