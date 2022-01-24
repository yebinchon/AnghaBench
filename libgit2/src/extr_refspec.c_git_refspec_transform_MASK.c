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
struct TYPE_4__ {char* dst; int /*<<< orphan*/  src; int /*<<< orphan*/  pattern; } ;
typedef  TYPE_1__ git_refspec ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 

int FUNC6(git_buf *out, const git_refspec *spec, const char *name)
{
	FUNC0(out && spec && name);
	FUNC2(out);

	if (!FUNC4(spec, name)) {
		FUNC3(GIT_ERROR_INVALID, "ref '%s' doesn't match the source", name);
		return -1;
	}

	if (!spec->pattern)
		return FUNC1(out, spec->dst ? spec->dst : "");

	return FUNC5(out, spec->src, spec->dst, name);
}