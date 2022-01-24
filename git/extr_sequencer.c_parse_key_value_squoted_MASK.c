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
struct string_list_item {int /*<<< orphan*/  util; int /*<<< orphan*/  string; } ;
struct string_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,...) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char*,char) ; 
 struct string_list_item* FUNC5 (struct string_list*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(char *buf, struct string_list *list)
{
	while (*buf) {
		struct string_list_item *item;
		char *np;
		char *cp = FUNC3(buf, '=');
		if (!cp) {
			np = FUNC4(buf, '\n');
			return FUNC1(FUNC0("no key present in '%.*s'"),
				     (int) (np - buf), buf);
		}
		np = FUNC4(cp, '\n');
		*cp++ = '\0';
		item = FUNC5(list, buf);

		buf = np + (*np == '\n');
		*np = '\0';
		cp = FUNC2(cp);
		if (!cp)
			return FUNC1(FUNC0("unable to dequote value of '%s'"),
				     item->string);
		item->util = FUNC6(cp);
	}
	return 0;
}