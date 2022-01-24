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
typedef  int /*<<< orphan*/  git_filter ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_PASSTHROUGH ; 
 int FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(
	git_filter     *self,
	void          **payload,
	git_buf        *to,
	const git_buf  *from,
	const git_filter_source *source)
{
	const char *filtername = *payload;

	if (filtername && FUNC3(filtername, "wcflip") == 0)
		return FUNC0(self, payload, to, from, source);
	else if (filtername && FUNC3(filtername, "wcreverse") == 0)
		return FUNC2(self, payload, to, from, source);

	FUNC1("Unexpected attribute");
	return GIT_PASSTHROUGH;
}