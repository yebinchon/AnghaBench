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
 int FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC4 (char const*) ; 

int FUNC5(git_buf *decoded_out, const char *input)
{
	int len, hi, lo, i;
	FUNC0(decoded_out && input);

	len = (int)FUNC4(input);
	FUNC2(decoded_out);

	for(i = 0; i < len; i++)
	{
		char c = input[i];

		if (c != '%')
			goto append;

		if (i >= len - 2)
			goto append;

		hi = FUNC1(input[i + 1]);
		lo = FUNC1(input[i + 2]);

		if (hi < 0 || lo < 0)
			goto append;

		c = (char)(hi << 4 | lo);
		i += 2;

append:
		if (FUNC3(decoded_out, c) < 0)
			return -1;
	}

	return 0;
}