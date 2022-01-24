#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_CONTENTS_CRLF ; 
 int /*<<< orphan*/  FILE_CONTENTS_LF ; 
 int /*<<< orphan*/  FILE_OID_LF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	const git_index_entry *entry;
	git_oid oid;

	FUNC6(g_repo, "core.autocrlf", "input");
	FUNC5(g_repo, "core.safecrlf", true);

	FUNC3("./crlf/newfile.txt", FILE_CONTENTS_LF);

	FUNC4(FUNC7(g_index, "newfile.txt"));
	entry = FUNC8(g_index, "newfile.txt", 0);
	FUNC0(entry);

	FUNC4(FUNC9(&oid, FILE_OID_LF));
	FUNC1(&oid, &entry->id);

	FUNC3("./crlf/newfile2.txt", FILE_CONTENTS_CRLF);
	FUNC2(FUNC7(g_index, "newfile2.txt"));
}