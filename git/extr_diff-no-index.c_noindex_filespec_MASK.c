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
struct diff_filespec {int dummy; } ;

/* Variables and functions */
 struct diff_filespec* FUNC0 (char const*) ; 
 char const* file_from_standard_input ; 
 int /*<<< orphan*/  FUNC1 (struct diff_filespec*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC2 (struct diff_filespec*) ; 

__attribute__((used)) static struct diff_filespec *FUNC3(const char *name, int mode)
{
	struct diff_filespec *s;

	if (!name)
		name = "/dev/null";
	s = FUNC0(name);
	FUNC1(s, &null_oid, 0, mode);
	if (name == file_from_standard_input)
		FUNC2(s);
	return s;
}