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
typedef  void* git_filter ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 scalar_t__ GIT_FILTER_SMUDGE ; 
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(
	git_filter     *self,
	void          **payload,
	git_buf        *to,
	const git_buf  *from,
	const git_filter_source *src)
{
	FUNC0(self); FUNC0(payload);

	/* Don't filter binary files */
	if (FUNC1(from))
		return GIT_PASSTHROUGH;

	if (FUNC2(src) == GIT_FILTER_SMUDGE)
		return FUNC3(to, from, src);
	else
		return FUNC4(to, from);
}