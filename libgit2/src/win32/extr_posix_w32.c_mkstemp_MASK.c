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

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,scalar_t__) ; 
 int FUNC2 (char*,int,int) ; 
 scalar_t__ FUNC3 (char*) ; 

int FUNC4(char *tmp_path)
{
#if defined(_MSC_VER) && _MSC_VER >= 1500
	if (_mktemp_s(tmp_path, strlen(tmp_path) + 1) != 0)
		return -1;
#else
	if (FUNC0(tmp_path) == NULL)
		return -1;
#endif

	return FUNC2(tmp_path, O_RDWR | O_CREAT | O_EXCL, 0744); /* -V536 */
}