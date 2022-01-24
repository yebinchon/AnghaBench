#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char** strings; int count; } ;

/* Variables and functions */
 TYPE_1__ _pathspecs ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
	char *paths[] = { "staged_changes", "staged_new_file" };

	FUNC3("status");

	_pathspecs.strings = paths;
	_pathspecs.count = 2;

	FUNC0(&_pathspecs, true, NULL);

	FUNC1(FUNC2(_repo, NULL, &_pathspecs));

	FUNC0(&_pathspecs, false, NULL);
}