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
struct object_directory {int /*<<< orphan*/  path; struct object_directory* next; } ;
struct TYPE_2__ {int packed_git_initialized; struct object_directory* odb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct repository*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*) ; 

__attribute__((used)) static void FUNC5(struct repository *r)
{
	struct object_directory *odb;

	if (r->objects->packed_git_initialized)
		return;

	FUNC0(r);
	for (odb = r->objects->odb; odb; odb = odb->next) {
		int local = (odb == r->objects->odb);
		FUNC1(r, odb->path, local);
		FUNC3(r, odb->path, local);
	}
	FUNC4(r);

	FUNC2(r);
	r->objects->packed_git_initialized = 1;
}