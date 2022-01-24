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

/* Variables and functions */
 int /*<<< orphan*/  PATH__ABSOLUTE_LEN ; 
 int /*<<< orphan*/  PATH__NT_NAMESPACE_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static wchar_t *FUNC5(wchar_t *path)
{
	if (FUNC1(path)) {
		path += PATH__NT_NAMESPACE_LEN;

		if (FUNC4(path, L"UNC\\", 4) == 0)
			path = FUNC3(path + 4);
		else if (FUNC0(path))
			path += PATH__ABSOLUTE_LEN;
	} else if (FUNC0(path)) {
		path += PATH__ABSOLUTE_LEN;
	} else if (FUNC2(path)) {
		path = FUNC3(path + 2);
	}

	return path;
}