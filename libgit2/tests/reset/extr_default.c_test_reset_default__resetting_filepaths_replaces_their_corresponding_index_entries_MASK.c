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
struct TYPE_7__ {char** strings; int count; } ;

/* Variables and functions */
 TYPE_2__ _pathspecs ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _target ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
	git_strarray before, after;

	char *paths[] = { "staged_changes", "staged_changes_file_deleted" };
	char *before_shas[] = { "55d316c9ba708999f1918e9677d01dfcae69c6b9",
		"a6be623522ce87a1d862128ac42672604f7b468b" };
	char *after_shas[] = { "32504b727382542f9f089e24fddac5e78533e96c",
		"061d42a44cacde5726057b67558821d95db96f19" };

	FUNC4("status");

	_pathspecs.strings = paths;
	_pathspecs.count = 2;
	before.strings = before_shas;
	before.count = 2;
	after.strings = after_shas;
	after.count = 2;

	FUNC1(FUNC3(&_target, _repo, "0017bd4"));
	FUNC0(&_pathspecs, true, &before);

	FUNC1(FUNC2(_repo, _target, &_pathspecs));

	FUNC0(&_pathspecs, true, &after);
}