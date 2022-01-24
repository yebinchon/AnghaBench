#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_7__ {int /*<<< orphan*/  objects; TYPE_4__ reserved_names; } ;
typedef  TYPE_1__ git_repository ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static git_repository *FUNC6(void)
{
	git_repository *repo = FUNC0(1, sizeof(git_repository));

	if (repo == NULL ||
		FUNC4(&repo->objects) < 0)
		goto on_error;

	FUNC2(repo->reserved_names, 4);
	if (!repo->reserved_names.ptr)
		goto on_error;

	/* set all the entries in the configmap cache to `unset` */
	FUNC5(repo);

	return repo;

on_error:
	if (repo)
		FUNC3(&repo->objects);

	FUNC1(repo);
	return NULL;
}