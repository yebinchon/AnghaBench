#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct repository {TYPE_2__* objects; } ;
struct TYPE_4__ {int /*<<< orphan*/ * multi_pack_index; TYPE_1__* odb; } ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 

void FUNC7(struct repository *r)
{
	char *midx = FUNC5(r->objects->odb->path);

	if (r->objects && r->objects->multi_pack_index) {
		FUNC2(r->objects->multi_pack_index);
		r->objects->multi_pack_index = NULL;
	}

	if (FUNC6(midx)) {
		FUNC0(midx);
		FUNC3(FUNC1("failed to clear multi-pack-index at %s"), midx);
	}

	FUNC4(midx);
}