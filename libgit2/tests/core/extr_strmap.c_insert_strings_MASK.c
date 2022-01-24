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
typedef  int /*<<< orphan*/  git_strmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(git_strmap *table, size_t count)
{
	size_t i, j, over;
	char *str;

	for (i = 0; i < count; ++i) {
		str = FUNC4(10);
		for (j = 0; j < 10; ++j)
			str[j] = 'a' + (i % 26);
		str[9] = '\0';

		/* if > 26, then encode larger value in first letters */
		for (j = 0, over = i / 26; over > 0; j++, over = over / 26)
			str[j] = 'A' + (over % 26);

		FUNC1(FUNC2(table, str, str));
	}

	FUNC0(FUNC3(table), count);
}