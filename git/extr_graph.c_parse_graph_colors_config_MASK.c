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
struct argv_array {int dummy; } ;

/* Variables and functions */
 int COLOR_MAXLEN ; 
 char* GIT_COLOR_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char const*) ; 

__attribute__((used)) static void FUNC6(struct argv_array *colors, const char *string)
{
	const char *end, *start;

	start = string;
	end = string + FUNC4(string);
	while (start < end) {
		const char *comma = FUNC3(start, ',');
		char color[COLOR_MAXLEN];

		if (!FUNC2(start, comma - start, color))
			FUNC1(colors, color);
		else
			FUNC5(FUNC0("ignore invalid color '%.*s' in log.graphColors"),
				(int)(comma - start), start);
		start = comma + 1;
	}
	FUNC1(colors, GIT_COLOR_RESET);
}