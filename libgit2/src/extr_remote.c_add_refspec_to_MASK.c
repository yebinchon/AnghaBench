#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_vector ;
struct TYPE_8__ {int push; } ;
typedef  TYPE_1__ git_refspec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(git_vector *vector, const char *string, bool is_fetch)
{
	git_refspec *spec;

	spec = FUNC1(1, sizeof(git_refspec));
	FUNC0(spec);

	if (FUNC4(spec, string, is_fetch) < 0) {
		FUNC2(spec);
		return -1;
	}

	spec->push = !is_fetch;
	if (FUNC5(vector, spec) < 0) {
		FUNC3(spec);
		FUNC2(spec);
		return -1;
	}

	return 0;
}