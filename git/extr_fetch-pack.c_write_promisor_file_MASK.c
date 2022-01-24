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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref {char* name; int /*<<< orphan*/  old_oid; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int FUNC6 (struct strbuf*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(const char *keep_name,
				struct ref **sought, int nr_sought)
{
	struct strbuf promisor_name = STRBUF_INIT;
	int suffix_stripped;
	FILE *output;
	int i;

	FUNC4(&promisor_name, keep_name);
	suffix_stripped = FUNC6(&promisor_name, ".keep");
	if (!suffix_stripped)
		FUNC0("name of pack lockfile should end with .keep (was '%s')",
		    keep_name);
	FUNC4(&promisor_name, ".promisor");

	output = FUNC7(promisor_name.buf, "w");
	for (i = 0; i < nr_sought; i++)
		FUNC2(output, "%s %s\n", FUNC3(&sought[i]->old_oid),
			sought[i]->name);
	FUNC1(output);

	FUNC5(&promisor_name);
}