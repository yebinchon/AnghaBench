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
struct passwd {int /*<<< orphan*/ * pw_name; } ;

/* Variables and functions */
 char* FUNC0 (struct passwd const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct passwd *w, struct strbuf *name)
{
	char *src;

	/* Traditionally GECOS field had office phone numbers etc, separated
	 * with commas.  Also & stands for capitalized form of the login name.
	 */

	for (src = FUNC0(w); *src && *src != ','; src++) {
		int ch = *src;
		if (ch != '&')
			FUNC1(name, ch);
		else {
			/* Sorry, Mr. McDonald... */
			FUNC1(name, FUNC3(*w->pw_name));
			FUNC2(name, w->pw_name + 1);
		}
	}
}