#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char** strings; scalar_t__ count; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 int /*<<< orphan*/ * _remote ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void FUNC11(void)
{
	git_strarray array;
	git_remote *dup;

	FUNC2(FUNC3(&dup, _remote));

	FUNC1(FUNC7(dup), FUNC7(_remote));
	FUNC1(FUNC9(dup), FUNC9(_remote));
	FUNC1(FUNC8(dup), FUNC8(_remote));

	FUNC2(FUNC5(&array, _remote));
	FUNC0(1, (int)array.count);
	FUNC1("+refs/heads/*:refs/remotes/test/*", array.strings[0]);
	FUNC10(&array);

	FUNC2(FUNC6(&array, _remote));
	FUNC0(0, (int)array.count);
	FUNC10(&array);

	FUNC4(dup);
}