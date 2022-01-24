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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,char) ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(
	git_buf *out, const char *from, const char *to, const char *name)
{
	const char *from_star, *to_star;
	size_t replacement_len, star_offset;

	FUNC4(out);
	FUNC1(out);

	/*
	 * There are two parts to each side of a refspec, the bit
	 * before the star and the bit after it. The star can be in
	 * the middle of the pattern, so we need to look at each bit
	 * individually.
	 */
	from_star = FUNC5(from, '*');
	to_star = FUNC5(to, '*');

	FUNC0(from_star && to_star);

	/* star offset, both in 'from' and in 'name' */
	star_offset = from_star - from;

	/* the first half is copied over */
	FUNC2(out, to, to_star - to);

	/*
	 * Copy over the name, but exclude the trailing part in "from" starting
	 * after the glob
	 */
	replacement_len = FUNC6(name + star_offset) - FUNC6(from_star + 1);
	FUNC2(out, name + star_offset, replacement_len);

	return FUNC3(out, to_star + 1);
}