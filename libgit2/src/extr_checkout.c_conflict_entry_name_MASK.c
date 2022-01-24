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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC2(
	git_buf *out,
	const char *side_name,
	const char *filename)
{
	if (FUNC1(out, side_name) < 0 ||
		FUNC0(out, ':') < 0 ||
		FUNC1(out, filename) < 0)
		return -1;

	return 0;
}