#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* path; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  entry ;
struct TYPE_11__ {char** strings; int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  _index ; 
 TYPE_4__ _pathspecs ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _target ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__ const*,int) ; 

void FUNC10(void)
{
	git_index_entry entry;
	const git_index_entry *existing;
	char *paths[] = { "new.txt" };

	FUNC8("testrepo2");

	existing = FUNC4(_index, "new.txt", 0);
	FUNC1(existing);
	FUNC9(&entry, existing, sizeof(entry));

	FUNC2(FUNC5(_index, "new.txt"));

	entry.path = "renamed.txt";
	FUNC2(FUNC3(_index, &entry));

	_pathspecs.strings = paths;
	_pathspecs.count = 1;

	FUNC0(&_pathspecs, false, NULL);

	FUNC2(FUNC7(&_target, _repo, "HEAD"));
	FUNC2(FUNC6(_repo, _target, &_pathspecs));

	FUNC0(&_pathspecs, true, NULL);
}