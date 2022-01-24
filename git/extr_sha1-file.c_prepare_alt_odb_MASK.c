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
struct TYPE_4__ {int loaded_alternates; TYPE_1__* odb; int /*<<< orphan*/  alternate_db; } ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_SEP ; 
 int /*<<< orphan*/  FUNC0 (struct repository*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct repository *r)
{
	if (r->objects->loaded_alternates)
		return;

	FUNC0(r, r->objects->alternate_db, PATH_SEP, NULL, 0);

	FUNC1(r, r->objects->odb->path, 0);
	r->objects->loaded_alternates = 1;
}