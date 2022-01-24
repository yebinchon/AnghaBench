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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static void FUNC5(git_buf *out, const char *field, const char *content)
{
	const char *lf;

	FUNC0(out && field && content);

	FUNC3(out, field);
	FUNC2(out, ' ');

	while ((lf = FUNC4(content, '\n')) != NULL) {
		FUNC1(out, content, lf - content);
		FUNC3(out, "\n ");
		content = lf + 1;
	}

	FUNC3(out, content);
	FUNC2(out, '\n');
}