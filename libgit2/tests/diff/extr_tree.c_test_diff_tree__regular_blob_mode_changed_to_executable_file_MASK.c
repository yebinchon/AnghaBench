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
struct TYPE_2__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 size_t GIT_DELTA_TYPECHANGE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ expect ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(void)
{
	/*
	 * $ git diff 806999..a8595c
	 * diff --git a/include/Nu/Nu.h b/include/Nu/Nu.h
	 * old mode 100644
	 * new mode 100755
	 */

	FUNC1("806999", "a8595c");

	FUNC0(1, expect.files);
	FUNC0(0, expect.file_status[GIT_DELTA_DELETED]);
	FUNC0(1, expect.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(0, expect.file_status[GIT_DELTA_ADDED]);
	FUNC0(0, expect.file_status[GIT_DELTA_TYPECHANGE]);
}