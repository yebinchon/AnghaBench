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
struct TYPE_2__ {scalar_t__ count; int /*<<< orphan*/ * strings; } ;

/* Variables and functions */
 int /*<<< orphan*/  _index ; 
 TYPE_1__ _pathspecs ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/ * _target ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const char *repo_name)
{
	_repo = FUNC1(repo_name);
	FUNC0(FUNC2(&_index, _repo));

	_target = NULL;

	_pathspecs.strings = NULL;
	_pathspecs.count = 0;
}