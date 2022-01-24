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
typedef  int /*<<< orphan*/  uint32_t ;
struct cmdname_help {scalar_t__ name; } ;
struct category_description {char* desc; int /*<<< orphan*/  category; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmdname_help*,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  cmd_name_cmp ; 
 int /*<<< orphan*/  FUNC2 (struct cmdname_help**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdname_help*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdname_help*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(const struct category_description *catdesc,
				  int *longest_p)
{
	struct cmdname_help *cmds;
	int longest = 0;
	int i, nr = 0;
	uint32_t mask = 0;

	for (i = 0; catdesc[i].desc; i++)
		mask |= catdesc[i].category;

	FUNC2(&cmds, mask);

	for (i = 0; cmds[i].name; i++, nr++) {
		if (longest < FUNC6(cmds[i].name))
			longest = FUNC6(cmds[i].name);
	}
	FUNC0(cmds, nr, cmd_name_cmp);

	for (i = 0; catdesc[i].desc; i++) {
		uint32_t mask = catdesc[i].category;
		const char *desc = catdesc[i].desc;

		FUNC5("\n%s\n", FUNC1(desc));
		FUNC4(cmds, mask, longest);
	}
	FUNC3(cmds);
	if (longest_p)
		*longest_p = longest;
}