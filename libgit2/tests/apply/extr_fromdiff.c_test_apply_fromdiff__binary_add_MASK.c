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
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_BINARY_DELTA_MODIFIED ; 
 int /*<<< orphan*/  FILE_BINARY_DELTA_MODIFIED_LEN ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  binary_opts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	git_buf newfile = GIT_BUF_INIT;

	newfile.ptr = FILE_BINARY_DELTA_MODIFIED;
	newfile.size = FILE_BINARY_DELTA_MODIFIED_LEN;

	FUNC1(FUNC0(
		NULL, NULL,
		&newfile, "binary.bin",
		NULL, &binary_opts));
}