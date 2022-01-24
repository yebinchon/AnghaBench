#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 char* FILE_CONTENTS_CRLF ; 
 char* FILE_CONTENTS_LF ; 
 int /*<<< orphan*/  FILE_OID_LF ; 
 scalar_t__ GIT_EOL_CRLF ; 
 scalar_t__ GIT_EOL_NATIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	const git_index_entry *entry;
	git_oid oid;

	FUNC1("./crlf/.gitattributes", "* text=auto\n");

	FUNC3(g_repo, "core.autocrlf", "input");

	FUNC1("./crlf/newfile.txt",
		(GIT_EOL_NATIVE == GIT_EOL_CRLF) ? FILE_CONTENTS_CRLF : FILE_CONTENTS_LF);

	FUNC2(FUNC4(g_index, "newfile.txt"));
	entry = FUNC5(g_index, "newfile.txt", 0);

	FUNC2(FUNC6(&oid, FILE_OID_LF));
	FUNC0(&oid, &entry->id);
}