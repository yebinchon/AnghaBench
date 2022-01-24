#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int DWORD ;

/* Variables and functions */
 int FILE_ATTRIBUTE_READONLY ; 
 int GIT_RETRY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(wchar_t *path)
{
	DWORD attrs;

	if ((attrs = FUNC0(path)) == INVALID_FILE_ATTRIBUTES)
		goto on_error;

	if ((attrs & FILE_ATTRIBUTE_READONLY) == 0)
		return 0;

	if (!FUNC1(path, (attrs & ~FILE_ATTRIBUTE_READONLY)))
		goto on_error;

	return GIT_RETRY;

on_error:
	FUNC2();
	return -1;
}