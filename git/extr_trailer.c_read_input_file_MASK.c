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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC3 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct strbuf *sb, const char *file)
{
	if (file) {
		if (FUNC4(sb, file, 0) < 0)
			FUNC1(FUNC0("could not read input file '%s'"), file);
	} else {
		if (FUNC3(sb, FUNC2(stdin), 0) < 0)
			FUNC1(FUNC0("could not read from stdin"));
	}
}