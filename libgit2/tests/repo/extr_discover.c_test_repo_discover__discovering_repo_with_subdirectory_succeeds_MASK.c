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
struct TYPE_2__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUB_REPOSITORY_FOLDER_SUB ; 
 int /*<<< orphan*/  SUB_REPOSITORY_FOLDER_SUB_SUB ; 
 int /*<<< orphan*/  SUB_REPOSITORY_FOLDER_SUB_SUB_SUB ; 
 int /*<<< orphan*/  SUB_REPOSITORY_GITDIR ; 
 TYPE_1__ ceiling_dirs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	FUNC0(SUB_REPOSITORY_FOLDER_SUB, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
	FUNC0(SUB_REPOSITORY_FOLDER_SUB_SUB, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
	FUNC0(SUB_REPOSITORY_FOLDER_SUB_SUB_SUB, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
}