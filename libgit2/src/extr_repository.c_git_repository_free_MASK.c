#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t size; } ;
struct TYPE_8__ {struct TYPE_8__* ident_email; struct TYPE_8__* ident_name; struct TYPE_8__* namespace; struct TYPE_8__* workdir; struct TYPE_8__* commondir; struct TYPE_8__* gitdir; struct TYPE_8__* gitlink; TYPE_4__ reserved_names; int /*<<< orphan*/ * diff_drivers; int /*<<< orphan*/  objects; } ;
typedef  TYPE_1__ git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(git_repository *repo)
{
	size_t i;

	if (repo == NULL)
		return;

	FUNC7(repo);

	FUNC5(&repo->objects);

	FUNC6(repo->diff_drivers);
	repo->diff_drivers = NULL;

	for (i = 0; i < repo->reserved_names.size; i++)
		FUNC4(FUNC3(repo->reserved_names, i));
	FUNC2(repo->reserved_names);

	FUNC0(repo->gitlink);
	FUNC0(repo->gitdir);
	FUNC0(repo->commondir);
	FUNC0(repo->workdir);
	FUNC0(repo->namespace);
	FUNC0(repo->ident_name);
	FUNC0(repo->ident_email);

	FUNC1(repo, sizeof(*repo));
	FUNC0(repo);
}