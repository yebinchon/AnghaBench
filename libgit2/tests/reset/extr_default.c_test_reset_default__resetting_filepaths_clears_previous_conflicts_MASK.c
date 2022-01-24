#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char** strings; int count; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_index_entry ;
struct TYPE_7__ {char** strings; int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  _index ; 
 TYPE_2__ _pathspecs ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _target ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void)
{
	const git_index_entry *conflict_entry[3];
	git_strarray after;

	char *paths[] = { "conflicts-one.txt" };
	char *after_shas[] = { "1f85ca51b8e0aac893a621b61a9c2661d6aa6d81" };

	FUNC6("mergedrepo");

	_pathspecs.strings = paths;
	_pathspecs.count = 1;
	after.strings = after_shas;
	after.count = 1;

	FUNC2(FUNC3(&conflict_entry[0], &conflict_entry[1],
		&conflict_entry[2], _index, "conflicts-one.txt"));

	FUNC2(FUNC5(&_target, _repo, "9a05ccb"));
	FUNC2(FUNC4(_repo, _target, &_pathspecs));

	FUNC0(&_pathspecs, true, &after);

	FUNC1(GIT_ENOTFOUND, FUNC3(&conflict_entry[0],
		&conflict_entry[1], &conflict_entry[2], _index, "conflicts-one.txt"));
}