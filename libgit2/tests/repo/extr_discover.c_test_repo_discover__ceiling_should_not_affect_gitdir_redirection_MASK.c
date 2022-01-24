#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCOVER_FOLDER ; 
 int /*<<< orphan*/  REPOSITORY_ALTERNATE_FOLDER ; 
 int /*<<< orphan*/  REPOSITORY_ALTERNATE_FOLDER_SUB ; 
 int /*<<< orphan*/  REPOSITORY_ALTERNATE_FOLDER_SUB_SUB ; 
 int /*<<< orphan*/  REPOSITORY_ALTERNATE_FOLDER_SUB_SUB_SUB ; 
 int /*<<< orphan*/  SUB_REPOSITORY_FOLDER ; 
 int /*<<< orphan*/  SUB_REPOSITORY_GITDIR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ ceiling_dirs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	FUNC0(&ceiling_dirs, SUB_REPOSITORY_FOLDER);

	/* gitfile redirection should not be affected by ceiling directories */
	FUNC1(REPOSITORY_ALTERNATE_FOLDER, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
	FUNC1(REPOSITORY_ALTERNATE_FOLDER_SUB, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
	FUNC1(REPOSITORY_ALTERNATE_FOLDER_SUB_SUB, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
	FUNC1(REPOSITORY_ALTERNATE_FOLDER_SUB_SUB_SUB, ceiling_dirs.ptr, DISCOVER_FOLDER);
}