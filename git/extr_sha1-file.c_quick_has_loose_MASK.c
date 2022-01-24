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
struct object_id {int dummy; } ;
struct object_directory {struct object_directory* next; } ;
struct TYPE_2__ {struct object_directory* odb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_directory*,struct object_id const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*) ; 

__attribute__((used)) static int FUNC3(struct repository *r,
			   const struct object_id *oid)
{
	struct object_directory *odb;

	FUNC2(r);
	for (odb = r->objects->odb; odb; odb = odb->next) {
		if (FUNC1(FUNC0(odb, oid), oid) >= 0)
			return 1;
	}
	return 0;
}