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
typedef  int /*<<< orphan*/  git_filter_source ;
typedef  int /*<<< orphan*/  const git_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 void* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(
	git_filter  *self,
	void **payload,
	const git_filter_source *src,
	const char **attr_values)
{
	FUNC1(self);
	FUNC1(src);

	if (FUNC3(attr_values[0], "wcflip") == 0 ||
		FUNC3(attr_values[0], "wcreverse") == 0) {
		*payload = FUNC2(attr_values[0]);
		FUNC0(*payload);
		return 0;
	}

	return GIT_PASSTHROUGH;
}