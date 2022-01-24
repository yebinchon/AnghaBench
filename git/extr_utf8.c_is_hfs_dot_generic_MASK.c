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
typedef  char ucs_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 char FUNC1 (char const**) ; 
 char const FUNC2 (char) ; 

__attribute__((used)) static int FUNC3(const char *path,
			      const char *needle, size_t needle_len)
{
	ucs_char_t c;

	c = FUNC1(&path);
	if (c != '.')
		return 0;

	/*
	 * there's a great deal of other case-folding that occurs
	 * in HFS+, but this is enough to catch our fairly vanilla
	 * hard-coded needles.
	 */
	for (; needle_len > 0; needle++, needle_len--) {
		c = FUNC1(&path);

		/*
		 * We know our needles contain only ASCII, so we clamp here to
		 * make the results of tolower() sane.
		 */
		if (c > 127)
			return 0;
		if (FUNC2(c) != *needle)
			return 0;
	}

	c = FUNC1(&path);
	if (c && !FUNC0(c))
		return 0;

	return 1;
}