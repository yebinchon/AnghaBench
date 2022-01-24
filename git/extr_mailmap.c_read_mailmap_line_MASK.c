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
struct string_list {int dummy; } ;
typedef  int /*<<< orphan*/  abbrev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct string_list*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 
 char* FUNC3 (char*,char**,char**,int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct string_list *map, char *buffer,
			      char **repo_abbrev)
{
	char *name1 = NULL, *email1 = NULL, *name2 = NULL, *email2 = NULL;
	if (buffer[0] == '#') {
		static const char abbrev[] = "# repo-abbrev:";
		int abblen = sizeof(abbrev) - 1;
		int len = FUNC4(buffer);

		if (!repo_abbrev)
			return;

		if (len && buffer[len - 1] == '\n')
			buffer[--len] = 0;
		if (!FUNC5(buffer, abbrev, abblen)) {
			char *cp;

			FUNC1(*repo_abbrev);

			for (cp = buffer + abblen; FUNC2(*cp); cp++)
				; /* nothing */
			*repo_abbrev = FUNC6(cp);
		}
		return;
	}
	if ((name2 = FUNC3(buffer, &name1, &email1, 0)) != NULL)
		FUNC3(name2, &name2, &email2, 1);

	if (email1)
		FUNC0(map, name1, email1, name2, email2);
}