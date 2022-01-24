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
typedef  int /*<<< orphan*/  git_describe_format_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DESCRIBE_FORMAT_OPTIONS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2(
	git_describe_format_options *dst,
	const git_describe_format_options *src)
{
	if (!src) {
		FUNC0(dst, GIT_DESCRIBE_FORMAT_OPTIONS_VERSION);
		return 0;
	}

	FUNC1(dst, src, sizeof(git_describe_format_options));
	return 0;
}