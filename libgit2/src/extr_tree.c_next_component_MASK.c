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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static bool FUNC3(git_buf *out, const char *in)
{
	const char *slash = FUNC2(in, '/');

	FUNC0(out);

	if (slash)
		FUNC1(out, in, slash - in);

	return !!slash;
}