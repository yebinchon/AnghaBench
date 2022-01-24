#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_path_diriter ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_8__ {TYPE_1__ path; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  GIT_PATH_DIRITER_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  dirent_cleanup__cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_2__ sub ; 

void FUNC9(void)
{
	git_path_diriter diriter = GIT_PATH_DIRITER_INIT;
	int error;

	FUNC3(&dirent_cleanup__cb, &sub);
	FUNC8(&sub);

	FUNC2(FUNC5(&diriter, sub.path.ptr, 0));

	while ((error = FUNC6(&diriter)) == 0)
		FUNC7(&diriter, &sub);

	FUNC1(error, GIT_ITEROVER);

	FUNC4(&diriter);

	FUNC0(&sub);
}